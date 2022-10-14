import { createAssociatedTokenAccountInstruction,
  AccountLayout,
  ASSOCIATED_TOKEN_PROGRAM_ID,
  TOKEN_PROGRAM_ID,
} from "@solana/spl-token";
import {
  Commitment,
  Connection,
  PublicKey,
  TransactionInstruction
} from "@solana/web3.js";


export const getTokenBalance = async (
  connection: Connection,
  tokenAccount: PublicKey
): Promise<number | bigint> => {
  let amount: number | bigint = 0;

  const tokenAccountInfo = await connection.getAccountInfo(tokenAccount);
  if (tokenAccountInfo) {
    const accountData = AccountLayout.decode(tokenAccountInfo.data);
    amount = accountData.amount;
  }

  return amount;
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
}
