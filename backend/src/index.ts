import express, {Request, Response} from "express";
import Evervault from '@evervault/sdk';
import cors from "cors";

import {Keypair, PublicKey, Connection, clusterApiUrl} from '@solana/web3.js';
import {GatekeeperService} from '@identity.com/solana-gatekeeper-lib';
import {findGatewayToken} from "@identity.com/solana-gateway-ts";
import Storage from "./lib/Storage";

const bs58 = require('bs58');

const PORT: number = process.env.PORT ? parseInt(process.env.PORT as string, 10) : 80;

const gatekeeperAuthority = Keypair.fromSecretKey(bs58.decode('QzSdRKirjb3Dq64ZoWkxyNwmNVgefWNrAcUGwJF6pVx9ZeiXYCWWc4eBFBYwgP5qBnwmX3nA6PYQqLuqSuuuFsx'));
const gatekeeperNetwork = new PublicKey('tgnuXXNMDLK8dy7Xm1TdeGyc95MDym4bvAQCwcW21Bf');
const SOLANA_CLUSTER = 'devnet';

const storage = new Storage('us-east-2', 'socure-pii-storage');

const app = express();

app.use(cors());
app.use(express.json());

app.get('/', (request: Request, response: Response) => {
    response.send('Identity.com');
});

const handleDocumentUpload = async (request: Request, response: Response) => {
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
    if (request.body.event.data.documentVerification.decision.value !== 'accept') {
        console.log("Validation failed");
        return;
    }

    const address = new PublicKey(request.body.event.customerUserId);
    const connection = new Connection(clusterApiUrl(SOLANA_CLUSTER), 'confirmed');
    let token = await findGatewayToken(connection, address, gatekeeperNetwork);

    await storage.store(address.toBase58(), 'pii.json', JSON.stringify(request.body, null, 2));

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
            case 'DOCUMENTS_UPLOADED':
                await handleDocumentUpload(request, response);
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

app.listen(PORT, () => {
    console.log(`Listening on port ${PORT}`);
});