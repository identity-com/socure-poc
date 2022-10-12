import express, { Request, Response } from "express";
import { clusterApiUrl, Connection, PublicKey, SystemProgram, Transaction } from '@solana/web3.js';
import cors from "cors";
import { PaymentSession, PaymentStatus } from "./types";
import { v4 as uuidv4 } from 'uuid';
import { paymentSessionStore, purgeOldSessions } from "./simple-store";
import { findGatewayToken } from "@identity.com/solana-gateway-ts";


const PORT: number = process.env.PORT ? parseInt(process.env.PORT, 10) : 3001;
const PAYMENTS_PATH = '/payments';
const SOLANA_URL_SUFFIX = '/solana';
const REQUEST_PATH = '/request';

// const bs58 = require('bs58');
// const {BigNumber} = require('bignumber.js');


// const gatekeeperAuthority = Keypair.fromSecretKey(bs58.decode('QzSdRKirjb3Dq64ZoWkxyNwmNVgefWNrAcUGwJF6pVx9ZeiXYCWWc4eBFBYwgP5qBnwmX3nA6PYQqLuqSuuuFsx'));
// const gatekeeperNetwork = new PublicKey('tgnuXXNMDLK8dy7Xm1TdeGyc95MDym4bvAQCwcW21Bf');
const usdcSPLAddress = new PublicKey('EPjFWdd5AufqSSqeM2qN1xzybapC8G4wEGGkZwyTDt1v');
const shopAddress = new PublicKey('identv2kHTqjCU1tsgs83b1GgQBU4ukwv34QTctxS8x');


const app = express();

app.use(cors());
app.use(express.json());


const connection = new Connection(clusterApiUrl('devnet'), 'confirmed');
const GATEKEPPER_NETWORK = new PublicKey('tgnuXXNMDLK8dy7Xm1TdeGyc95MDym4bvAQCwcW21Bf');

/**
 * Generates a new payment session and returns the given URL
 */
app.post(PAYMENTS_PATH, (request: Request, response: Response) => {
  // purge if more then 1000 sessions
  if (paymentSessionStore.size > 1000) {
    purgeOldSessions();
  }
  const uuid = uuidv4();
  // const url = `${request.protocol}://${request.get('host')}${PAYMENTS_PATH}/${uuid}${SOLANA_URL_SUFFIX}`;
  // For local testing:
  const url = `https://${request.get('host')}${PAYMENTS_PATH}/${uuid}${SOLANA_URL_SUFFIX}`;


  // add session to store
  const session: PaymentSession = {
    id: uuid,
    url,
    status: PaymentStatus.QR,
    createdAt: new Date(),
  };
  paymentSessionStore.set(uuid, session);


  response.status(200).send(session);
})

/**
 * Get Session State
 */
app.get(`${PAYMENTS_PATH}/:id`, (request: Request, response: Response) => {
  const session = paymentSessionStore.get(request.params.id);
  if (!session) {
    response.status(404).send({
      message: 'Session not found',
    });
    return;
  }

  response.status(200).send(session);
});

/**
 * Get the Store Info
 */
app.get(`${PAYMENTS_PATH}/:id${SOLANA_URL_SUFFIX}`, (request: Request, response: Response) => {
  console.log("Received initial GET request");
  const session = paymentSessionStore.get(request.params.id);
  if (!session) {
    response.status(404).send({
      message: 'Session not found',
    });
    return;
  }

  session.status = PaymentStatus.SCANNED;
  paymentSessionStore.set(session.id, session);


  const label = 'Identity.com Solana Pay Sample';
  const icon = 'https://exiledapes.academy/wp-content/uploads/2021/09/X_share.png';

  response.status(200).send({
    label,
    icon,
  });
});

app.post(`${PAYMENTS_PATH}/:id${SOLANA_URL_SUFFIX}`, async (request: Request, response: Response) => {
  console.log(JSON.stringify(request.headers));
  console.log(JSON.stringify(request.body));
  console.log(`Received POST request for account ${request.body.account}`);

  const session = paymentSessionStore.get(request.params.id);
  if (!session) {
    response.status(404).send({
      message: 'Session not found',
    });
    return;
  }
  const account = new PublicKey(request.body.account);

  session.account = account;
  session.status = PaymentStatus.TX_SEND;
  paymentSessionStore.set(session.id, session);

  // TODO: Implement Gateway V2
  // check if Account has a valid Gatekeeper token.
  const token = await findGatewayToken(connection, account, GATEKEPPER_NETWORK);
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

  const { blockhash } = await connection.getRecentBlockhash();

  const transaction = new Transaction({
    recentBlockhash: blockhash,
    feePayer: account
  }).add(
    SystemProgram.transfer({
      fromPubkey: account,
      toPubkey: account,
      lamports: 0,
    })
  );

  const serializedTransaction = transaction.serialize({
    verifySignatures: false,
    requireAllSignatures: false,
  });

  const base64Transaction = serializedTransaction.toString('base64');
  const message = 'Your token has been issued';

  session.status = PaymentStatus.TX_SEND;
  paymentSessionStore.set(session.id, session);

  response.status(200).send({ transaction: base64Transaction, message });
})

app.listen(PORT, () => {
  console.log(`Solana Pay Demo started on port ${PORT}`)
})
