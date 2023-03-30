import {Request, Response} from "express";
import {LAMPORTS_PER_SOL, ParsedInstruction, PartiallyDecodedInstruction, PublicKey} from "@solana/web3.js";
import {findGatewayPass, GatekeeperService} from "@identity.com/gateway-solana-client";
import Evervault from "@evervault/sdk";
import {TOKEN_PROGRAM_ID} from "@solana/spl-token";
import {
  connection,
  storage
} from "./index";
import {
  FUNDER_ATA,
  FUNDER_AUTHORITY,
  GATEKEEPER,
  GATEKEEPER_ATA,
  GATEKEEPER_AUTHORITY,
  MINT,
  NETWORK,
  NETWORK_ATA
} from "./config";
import {Wallet} from "@project-serum/anchor";

const handleDocumentUpload = async (request: Request, _: Response) => {
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

const handleVerificationComplete = async (request: Request, _response: Response) => {
  console.log("Uploading PII and issuing token");
  if (request.body.event.data.documentVerification.decision.value !== 'accept') {
    console.log("Validation failed");
    return;
  }

  const gatekeeperService = await GatekeeperService.build(
    NETWORK,
    GATEKEEPER,
    {
      clusterType: 'devnet',
      wallet: new Wallet(GATEKEEPER_AUTHORITY),
    }
  );

  const subject = new PublicKey(request.body.event.customerUserId);
  const passAccount = await GatekeeperService.createPassAddress(
    subject,
    NETWORK
  );

  // Store PII
  // await storage.store(passAddress.toBase58(), 'pii.json', JSON.stringify(request.body, null, 2));

  let pass = await gatekeeperService.getPassAccount(subject);

  if (!pass) {
    console.log("Creating GWv2 Pass");

    await gatekeeperService.issue(
      passAccount,
      subject,
      TOKEN_PROGRAM_ID,
      MINT,
      GATEKEEPER_ATA,
      NETWORK_ATA,
      FUNDER_ATA,
      FUNDER_AUTHORITY.publicKey)
      .withPartialSigners(FUNDER_AUTHORITY)
      .rpc();

    pass = await gatekeeperService.getPassAccount(subject);
  }

  console.log("FOUND GWv2 PASS", JSON.stringify(pass, null, 2));
}

const isParsedTransaction = (transaction: (ParsedInstruction | PartiallyDecodedInstruction)): transaction  is ParsedInstruction => {
  return (transaction as ParsedInstruction).parsed !== undefined;
}

export const healthCheck = async (req: Request, res: Response) => {
  res.send('Identity.com');
}

export const verify = async (request: Request, response: Response) => {
  const failed = (message: string) => {
    return response.json({
      valid: false,
      message
    });
  }

  try {
    const signatures = await connection.getSignaturesForAddress(new PublicKey(request.body.reference));
    const transactionInfo = await connection.getParsedTransaction(signatures[0].signature);

    if (transactionInfo === null) {
      return failed("Invalid reference");
    }

    const instruction = transactionInfo.transaction.message.instructions[0];

    if (!isParsedTransaction(instruction)) return failed("Transaction not parsed");

    const foundDestination: string = instruction.parsed.info.destination;

    const foundSource: string = instruction.parsed.info.source;

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

    let token = await findGatewayPass(connection, NETWORK
      , new PublicKey(foundSource));
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
}

export const result = async (request: Request, response: Response) => {
  console.log(new Date());
  console.log(JSON.stringify(request.body, null, 2));

  try {
    if (!request.body.event || !request.body.event.eventType) {
      return response.json({
        valid: false,
        data: request.body,
      });
    }

    switch (request.body.event.eventType as 'VERIFICATION_COMPLETED' | 'DOCUMENTS_UPLOADED') {
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
}
