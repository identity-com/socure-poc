import express, {Request, Response} from "express";
import cors from "cors";
const {Keypair, PublicKey, Connection, clusterApiUrl} = require('@solana/web3.js');
const {GatekeeperService} = require('@identity.com/solana-gatekeeper-lib');
import {findGatewayToken} from "@identity.com/solana-gateway-ts";

const bs58 = require('bs58');


const PORT: number = process.env.PORT ? parseInt(process.env.PORT as string, 10) : 80;
// TODO: Mpve to config
const gatekeeperAuthority = Keypair.fromSecretKey(bs58.decode('QzSdRKirjb3Dq64ZoWkxyNwmNVgefWNrAcUGwJF6pVx9ZeiXYCWWc4eBFBYwgP5qBnwmX3nA6PYQqLuqSuuuFsx'));
const gatekeeperNetwork = new PublicKey('tgnuXXNMDLK8dy7Xm1TdeGyc95MDym4bvAQCwcW21Bf');
const SOLANA_CLUSTER = 'devnet';

const app = express();

app.use(cors());
app.use(express.json());

app.get('/', (request: Request, response: Response) => {
    response.send('Identity.com');
});

app.post('/result', async (request: Request, response: Response) => {
    // Ignore other progress events
    if(request.body.event.eventType !== 'VERIFICATION_COMPLETED') {
        return;
    }

    // TODO: Handle unhappy path (could be client side)?
    if(request.body.event.data.documentVerification.decision.value !== 'accept') {
        console.log("Validation failed");
        return;
    }

    const address = new PublicKey(request.body.event.customerUserId);
    const connection = new Connection(clusterApiUrl(SOLANA_CLUSTER), 'confirmed');
    let token = await findGatewayToken(connection,address, gatekeeperNetwork);

    // If the token is found, something may have gone wrong in the process. Ignore token creation ?
    if(!token) {
        const service = new GatekeeperService(
          connection,
          gatekeeperNetwork,
          gatekeeperAuthority,
        );

        token = await service.issue(address) // create the transaction
          .then((tx:any) => tx.send()) // send the transaction
          .then((tx:any) => tx.confirm()); // confirm the transaction
    }

    console.log("Issued token: " + token.publicKey.toBase58());

    // TODO: Store response body
    // TODO: Fire up evervault cage to download, and encrypt images

    // // TODO: Do we need this ?
    // response.setHeader('Access-Control-Allow-Origin', '*');
    // response.setHeader('Access-Control-Allow-Methods', '*');
    // response.setHeader('Access-Control-Allow-Headers', '*');

    return response.json({
        valid: true,
        data: request.body,
    });
});

app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`);
});
