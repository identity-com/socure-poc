import express, { Request, Response } from "express";
import { clusterApiUrl, Connection, PublicKey, Transaction } from '@solana/web3.js';
import cors from "cors";
import { PaymentInfo, PaymentSession, PaymentStatus } from "./types";
import { v4 as uuidv4 } from 'uuid';
import { paymentSessionStore, purgeOldSessions } from "./simple-store";
import { findGatewayToken } from "@identity.com/gateway-solana-client";
import {
  ASSOCIATED_TOKEN_PROGRAM_ID,
  TOKEN_PROGRAM_ID,
  createTransferInstruction,
  getAssociatedTokenAddress
} from "@solana/spl-token";
import { createAssociatedTokenAccountInstructionIfNeeded, getTokenBalance } from "./solana";


const PORT: number = process.env.PORT ? parseInt(process.env.PORT, 10) : 3001;
const PAYMENTS_PATH = '/payments';
const SOLANA_URL_SUFFIX = '/solana';

// @ts-ignore
BigInt.prototype.toJSON = function() {
  return this.toString()
}

const app = express();

app.use(cors({
  origin: '*'
}));
app.use(express.json());


const connection = new Connection(clusterApiUrl('devnet'), 'confirmed');


/**
 * Health response
 */
app.get('/', async (request: Request, response: Response) => {
  response.status(200).send({
    payments: {
      status: 'ok',
      activeSessions: paymentSessionStore.size
    }
  });
});

/**
 * Generates a new payment session and returns the given URL
 */
app.post(PAYMENTS_PATH, async (request: Request, response: Response) => {
  // purge if more then 1000 sessions
  if (paymentSessionStore.size > 1000) {
    purgeOldSessions();
  }
  const uuid = uuidv4();
  const proto = request.headers['x-forwarded-proto'] || request.protocol;
  const url = `${proto}://${request.get('host')}${PAYMENTS_PATH}/${uuid}${SOLANA_URL_SUFFIX}`;

  const mint = new PublicKey(request.body.mint);
  const toWallet = new PublicKey(request.body.toWallet);
  const gatekeeperNetwork = request.body.gatekeeperNetwork ? new PublicKey(request.body.gatekeeperNetwork) : undefined;


  const toTokenAccount = await getAssociatedTokenAddress(
    mint,
    toWallet,
    false,
    TOKEN_PROGRAM_ID,
    ASSOCIATED_TOKEN_PROGRAM_ID
  );
  const toTokenAccountBalanceBefore = await getTokenBalance(connection, toTokenAccount);

  const paymentInfo : PaymentInfo = {
    type: request.body.type,
    mint,
    toWallet,
    amount: request.body.amount,
    toTokenAccount,
    toTokenAccountBalanceBefore,
    gatekeeperNetwork,
  };


  // add session to store
  const session: PaymentSession = {
    id: uuid,
    url,
    paymentInfo,
    status: PaymentStatus.QR,
    createdAt: new Date(),
  };
  paymentSessionStore.set(uuid, session);


  response.status(200).send(session);
})

/**
 * Get Session State
 */
app.get(`${PAYMENTS_PATH}/:id`, async (request: Request, response: Response) => {
  const session = paymentSessionStore.get(request.params.id);
  if (!session) {
    response.status(404).send({
      message: 'Session not found',
    });
    return;
  }

  // TODO: It's hacky to update state in a GET request, but it's the easiest way to do it for now
  if (session.status === PaymentStatus.TX_SEND) {
    const balance = await getTokenBalance(connection, session.paymentInfo.toTokenAccount);
    if (balance === (BigInt(session.paymentInfo.toTokenAccountBalanceBefore) + BigInt(session.paymentInfo.amount))) {
      // Payment received
      session.status = PaymentStatus.TX_CONFIRMED;
      paymentSessionStore.set(session.id, session);
    }
  }

  response.status(200).send(session);
});

/**
 * Get the Store Info
 */
app.get(`${PAYMENTS_PATH}/:id${SOLANA_URL_SUFFIX}`, (request: Request, response: Response) => {
  // console.log("Received initial GET request");
  const session = paymentSessionStore.get(request.params.id);
  if (!session) {
    response.status(404).send({
      message: 'Session not found',
    });
    return;
  }

  session.status = PaymentStatus.SCANNED;
  paymentSessionStore.set(session.id, session);


  const label = 'Identity.com Zero Day Shopping';

  const icon = 'https://zerodayshopping.identity.com/wp-content/uploads/2022/10/identity.png';

  response.status(200).send({
    label,
    icon,
  });
});

app.post(`${PAYMENTS_PATH}/:id${SOLANA_URL_SUFFIX}`, async (request: Request, response: Response) => {
  console.log(JSON.stringify(request.headers));
  console.log(JSON.stringify(request.body));
  console.log(`Received v2 POST request for account ${request.body.account}`);

  const session = paymentSessionStore.get(request.params.id);
  if (!session) {
    response.status(404).send({
      message: 'Session not found',
    });
    return;
  }
  const account = new PublicKey(request.body.account);

  session.paymentInfo.fromWallet = account;
  paymentSessionStore.set(session.id, session);

  if (session.paymentInfo.gatekeeperNetwork) {
    const token = await findGatewayToken(connection, session.paymentInfo.gatekeeperNetwork, account);

    // no Gateway Token
    if (!token) {
      session.status = PaymentStatus.ERROR;
      session.errorMessage = 'No valid Gateway Token found';
      paymentSessionStore.set(session.id, session);
      response.status(400).send({
        message: 'No valid Gateway Token found',
      });
      return;
    }
  }

  const fromTokenAccount = await getAssociatedTokenAddress(
    session.paymentInfo.mint,
    account,
    false,
    TOKEN_PROGRAM_ID,
    ASSOCIATED_TOKEN_PROGRAM_ID
  );

  // current balance
  const fromTokenAccountBalanceBefore = await getTokenBalance(connection, fromTokenAccount);

  if (fromTokenAccountBalanceBefore < session.paymentInfo.amount) {
      session.status = PaymentStatus.ERROR;
      session.errorMessage = 'Account balance too low!';
      paymentSessionStore.set(session.id, session);
      response.status(400).send({
        message: session.errorMessage,
      });
      return;
  }

  // TODO: Only SPL Supported right now
  const optionalCreateAssociatedTokenAccountInstructions = await createAssociatedTokenAccountInstructionIfNeeded(
    connection,
    account,
    session.paymentInfo.toTokenAccount,
    session.paymentInfo.mint,
    session.paymentInfo.toWallet
  )

  const lastestBlockhash = await connection.getLatestBlockhash();
  const transaction = new Transaction({
    feePayer: account,
    ...lastestBlockhash,
  }).add(
    ...optionalCreateAssociatedTokenAccountInstructions,
    createTransferInstruction(
      fromTokenAccount, session.paymentInfo.toTokenAccount, account, session.paymentInfo.amount, [], TOKEN_PROGRAM_ID)
  )

  const serializedTransaction = transaction.serialize({
    verifySignatures: false,
    requireAllSignatures: false,
  });

  const base64Transaction = serializedTransaction.toString('base64');
  const message = `Transferred ${session.paymentInfo.amount} ${session.paymentInfo.mint.toString()} to ${session.paymentInfo.toWallet.toString()}`;

  session.status = PaymentStatus.TX_SEND;
  paymentSessionStore.set(session.id, session);

  response.status(200).send({ transaction: base64Transaction, message });
})

app.listen(PORT, () => {
  console.log(`Solana Pay Demo started on port ${PORT}`)
})
