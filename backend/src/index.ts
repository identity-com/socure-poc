import express, {Request, Response} from "express";
import Evervault from '@evervault/sdk';
import cors from "cors";
import {Wallet} from "@project-serum/anchor";

import {Keypair, PublicKey, Connection, clusterApiUrl, LAMPORTS_PER_SOL} from '@solana/web3.js';
import {GatekeeperService as GatekeeperServiceLib} from '@identity.com/solana-gatekeeper-lib';
import {findGatewayToken} from "@identity.com/solana-gateway-ts";
import Storage from "./lib/Storage";
import {GatekeeperService, NetworkService} from '@identity.com/gateway-solana-client';

const bs58 = require('bs58');

const PORT: number = process.env.PORT ? parseInt(process.env.PORT as string, 10) : 80;

const OLD_GATEKEEPER_AUTHORITY = Keypair.fromSecretKey(bs58.decode('QzSdRKirjb3Dq64ZoWkxyNwmNVgefWNrAcUGwJF6pVx9ZeiXYCWWc4eBFBYwgP5qBnwmX3nA6PYQqLuqSuuuFsx'));
const OLD_GATEKEEPER_NETWORK = new PublicKey('tgnuXXNMDLK8dy7Xm1TdeGyc95MDym4bvAQCwcW21Bf');
const OLD_SOLANA_CLUSTER = 'devnet';

const GATEKEEPER_AUTHORITY = Keypair.fromSecretKey(bs58.decode('45Bd8aXnMLHhA3jPixQX5A3vjysqtmRVP2YixiViB5tN16uWHeqo8vpFWov54Z5MhH8DR68dsPFJZYRyw92U7m9B'));
const GATEKEEPER_NETWORK = new PublicKey('4SfmBQj6rpk4p4iTjs3kghwA88PV4pjcC6nbA8FrbS6t');
const SOLANA_CLUSTER = 'devnet';

const storage = new Storage('us-east-2', 'socure-pii-storage');

const app = express();

app.use(cors());
app.use(express.json());

app.get('/', (request: Request, response: Response) => {
  response.send('Identity.com');
});

const handleDocumentUpload = async (request: Request, response: Response) => {
    console.log("Encrypting and uploading documents")
    const documentUuid = request.body.event.data.uuid;

    const evervault = new Evervault(process.env.EVERVAULT_API_KEY);

    const result = await evervault.run('socure-poc-cage', {
        documentUuid
    });

    await storage.store(request.body.event.customerUserId, 'image-data.json',
        JSON.stringify({
            iv: result.result.iv,
            key: result.result.key
        })
    );

    await storage.store(request.body.event.customerUserId, 'image.zip.enc', Buffer.from(result.result.data.data));
}

const handleVerificationComplete = async (request: Request, response: Response) => {
    console.log("Uploading PII and issuing token");

    if (request.body.event.data.documentVerification.decision.value !== 'accept') {
        console.log("Validation failed");
        return;
    }

  const address = new PublicKey(request.body.event.customerUserId);

  // Store PII
  await storage.store(address.toBase58(), 'pii.json', JSON.stringify(request.body, null, 2));

  const oldConnection = new Connection(clusterApiUrl(OLD_SOLANA_CLUSTER), 'confirmed');
  const networkPda = GATEKEEPER_NETWORK;
  const [gatekeeperPda] = await NetworkService.createGatekeeperAddress(GATEKEEPER_AUTHORITY.publicKey, networkPda);

  const gatekeeper = await GatekeeperService.build(
    GATEKEEPER_NETWORK,
    gatekeeperPda,
    new Wallet(GATEKEEPER_AUTHORITY),
    SOLANA_CLUSTER
  );

  let pass = await gatekeeper.getPassAccount(address);

  if (!pass) {
    console.log("Creating GWv2 Pass");
    const passPda = await GatekeeperService.createPassAddress(
      address,
      networkPda
    );
    await gatekeeper.issue(passPda, address).rpc();

    pass = await gatekeeper.getPassAccount(address);
  }

  console.log("FOUND GWv2 PASS", JSON.stringify(pass, null, 2));

  let v1Token = await findGatewayToken(oldConnection, address, OLD_GATEKEEPER_NETWORK);

  // If the token is found, something may have gone wrong in the process. Ignore token creation ?
  if (!v1Token) {
    console.log("Creating GWv1 Pass");
    const service = new GatekeeperServiceLib(
      oldConnection,
      OLD_GATEKEEPER_NETWORK,
      OLD_GATEKEEPER_AUTHORITY,
    );

    v1Token = await service.issue(address) // create the transaction
      .then((tx: any) => tx.send()) // send the transaction
      .then((tx: any) => tx.confirm()); // confirm the transaction
  }

}

app.post('/result', async (request: Request, response: Response) => {
    console.log(new Date());
    console.log(JSON.stringify(request.body, null, 2));

    try {
        if (!request.body.event || !request.body.event.eventType) {
            return response.json({
                valid: false,
                data: request.body,
            });
        }

        switch (request.body.event.eventType as String) {
            case 'VERIFICATION_COMPLETED':
                await handleVerificationComplete(request, response);
                break;
            case 'DOCUMENTS_UPLOADED':
                await handleDocumentUpload(request, response);
                break;
        }
    } catch (e) {
        console.log(e);
        return response.json({
            valid: false,
            data: request.body,
        });
    }

    return response.json({
        valid: true,
        data: request.body,
    });
});

app.get('/poc/reference', async (request: Request, response: Response) => {
     return response.json({
        reference: Keypair.generate().publicKey.toBase58()
    });
});

app.post("/poc/verify", async (request: Request, response: Response) => {
    const failed = (message: string) => {
        return response.json({
            valid: false,
            message
        });
    }

    try {
        const connection = new Connection(clusterApiUrl(SOLANA_CLUSTER), 'confirmed');

        const signatures = await connection.getSignaturesForAddress(new PublicKey(request.body.reference));
        const transactionInfo = await connection.getParsedConfirmedTransaction(signatures[0].signature);

        if (transactionInfo === null) {
            return failed("Invalid reference");
        }

        const instruction = transactionInfo.transaction.message.instructions[0];

        // @ts-ignore
        const foundDestination: string = instruction?.parsed.info.destination;
        // @ts-ignore
        const foundSource: string = instruction.parsed.info.source;
        // @ts-ignore
        const foundLamports: number = instruction.parsed.info.lamports;

        if (foundDestination !== request.body.recipient) {
            return failed("Invalid recipient address");
        }

        if (foundSource !== request.body.sender) {
            return failed("Invalid sender address");
        }

        if (foundLamports !== request.body.amount * LAMPORTS_PER_SOL) {
            return failed("Invalid amount");
        }

        let token = await findGatewayToken(connection, new PublicKey(foundSource), OLD_GATEKEEPER_NETWORK);
        if (token === null) {
            return failed("Identity token not found");
        }

        return response.json({
            valid: true,
            signature: transactionInfo.transaction.signatures[0]
        });
    } catch (e) {
        return failed("Unknown");
    }
});

app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`);
});