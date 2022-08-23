import {Keypair, PublicKey} from '@solana/web3.js';
import BigNumber from 'bignumber.js';

export type TransactionType = {
    reference: PublicKey,
    recipient: PublicKey;
    splToken?: PublicKey;
    amount: BigNumber;
    label: string;
    message: string;
    memo: string;
};

export async function generateTransaction(transactionConfig: {
    reference: string,
    recipient: string,
    splToken?: string,
    amount: number,
    label: string,
    message: string,
    memo: string
}): Promise<TransactionType> {
    let transaction: TransactionType = {
        reference: Keypair.generate().publicKey,
        recipient: new PublicKey(transactionConfig.recipient),
        amount: new BigNumber(transactionConfig.amount),
        label: transactionConfig.label,
        message: transactionConfig.message,
        memo: transactionConfig.memo,
    };

    if (transactionConfig.splToken) {
        transaction.splToken = new PublicKey(transactionConfig.splToken);
    }

    return transaction;
}
