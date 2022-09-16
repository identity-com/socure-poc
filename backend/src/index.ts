import express, {Request, Response} from "express";
import cors from "cors";

import {Keypair, PublicKey, Connection, clusterApiUrl} from '@solana/web3.js';
import {GatekeeperService} from '@identity.com/solana-gatekeeper-lib';
import {findGatewayToken} from "@identity.com/solana-gateway-ts";
import Storage from "./lib/Storage";

const bs58 = require('bs58');

const PORT: number = process.env.PORT ? parseInt(process.env.PORT as string, 10) : 80;
// TODO: Move to config
const gatekeeperAuthority = Keypair.fromSecretKey(bs58.decode('QzSdRKirjb3Dq64ZoWkxyNwmNVgefWNrAcUGwJF6pVx9ZeiXYCWWc4eBFBYwgP5qBnwmX3nA6PYQqLuqSuuuFsx'));
const gatekeeperNetwork = new PublicKey('tgnuXXNMDLK8dy7Xm1TdeGyc95MDym4bvAQCwcW21Bf');
const SOLANA_CLUSTER = 'devnet';

const app = express();

app.use(cors());
app.use(express.json());

app.get('/', (request: Request, response: Response) => {
  response.send('Identity.com');
});

const handleDocumentUpload = (request: Request, response: Response) => {
  const documentUuid = request.body.event.data.uuid;

  return response.json({
    valid: false,
    data: request.body,
  });
}

const handleVerificationComplete = async (request: Request, response: Response) => {
  // TODO: Handle unhappy path (could be client side)?
  if (request.body.event.data.documentVerification.decision.value !== 'accept') {
    console.log("Validation failed");
    return;
  }

  const address = new PublicKey(request.body.event.customerUserId);
  const connection = new Connection(clusterApiUrl(SOLANA_CLUSTER), 'confirmed');
  let token = await findGatewayToken(connection, address, gatekeeperNetwork);

  // If the token is found, something may have gone wrong in the process. Ignore token creation ?
  if (!token) {
    const service = new GatekeeperService(
      connection,
      gatekeeperNetwork,
      gatekeeperAuthority,
    );

    token = await service.issue(address) // create the transaction
      .then((tx: any) => tx.send()) // send the transaction
      .then((tx: any) => tx.confirm()); // confirm the transaction
  }

  // store plain text PII
  // const storage = new Storage('us-east-2', 'socure-pii-storage');
  // await storage.store(address.toBase58(), 'pii.json', JSON.stringify(request.body, null, 2));

  return response.json({
    valid: true,
    data: request.body,
  });
}

app.post('/result', async (request: Request, response: Response) => {
  try {
    if (!request.body.event || !request.body.event.eventType) {
      return response.json({
        valid: false,
        data: request.body,
      });;
    }

    switch (request.body.event.eventType as String) {
      case 'VERIFICATION_COMPLETED':
        return await handleVerificationComplete(request, response);
      case 'DOCUMENTS_UPLOADED':
        return await handleDocumentUpload(request, response);
    }
  } catch (e) {
    console.log(e);
    return response.json({
      valid: false,
      data: request.body,
    });
  }
});

app.listen(PORT, () => {
  console.log(`Listening on port ${PORT}`);
});
