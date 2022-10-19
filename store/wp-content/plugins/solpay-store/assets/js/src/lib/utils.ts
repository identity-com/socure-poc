import {Commitment, Connection, PublicKey, TransactionInstruction} from "@solana/web3.js";
import {SolanaPaymentWindow} from "../types";
import {
  ASSOCIATED_TOKEN_PROGRAM_ID,
  createAssociatedTokenAccountInstruction,
  TOKEN_PROGRAM_ID
} from "@solana/spl-token";

declare const window: SolanaPaymentWindow;

export const confirmAndRedirect = async (publicKey: PublicKey) => {
  const transaction = window.SOLANA_PAYMENT_CONFIG.transaction;

  let params: any = {
    reference: transaction.reference,
    recipient: transaction.recipient,
    amount: transaction.amount,
    label: transaction.label,
    message: transaction.message,
    memo: transaction.memo,
    cluster: window.SOLANA_PAYMENT_CONFIG.cluster,
    sender: publicKey.toBase58()
  }

  if (transaction.splToken) {
    params.splToken = transaction.splToken.toString();
  }

  const formData = new FormData();

  for (let key in params) {
    formData.append(key, params[key]);
  }

  formData.append('security', window.SOLANA_PAY_WC_NONCE_CONFIG.nonce);

  const response = await fetch(window.SOLANA_PAYMENT_CONFIG.paymentNotificationEndpoint, {
    method: 'POST',
    body: formData
  }).then(response => response.json());

  if (response.errors) {
    console.log(response.errors);
    return;
  }

  if (response.redirectUrl) {
    window.location.href = response.redirectUrl;
  }
}

export const createAssociatedTokenAccountInstructionIfNeeded = async (
    connection: Connection,
    payer: PublicKey,
    associatedToken: PublicKey,
    mint: PublicKey,
    owner: PublicKey,
    commitment?: Commitment,
    programId = TOKEN_PROGRAM_ID,
    associatedTokenProgramId = ASSOCIATED_TOKEN_PROGRAM_ID
): Promise<TransactionInstruction[]> => {
  const associatedTokenInfo = await connection.getAccountInfo(associatedToken, commitment);

  const result: TransactionInstruction[] = [];

  if (!associatedTokenInfo) {
    result.push(
        createAssociatedTokenAccountInstruction(
            payer,
            associatedToken,
            owner,
            mint,
            programId,
            associatedTokenProgramId
        )
    )
  }

  return result;
};