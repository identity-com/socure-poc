import {Cluster, clusterApiUrl, Connection, Keypair, PublicKey, SystemProgram, Transaction} from '@solana/web3.js';
import {encodeURL, createQR, createTransaction} from '@solana/pay';
import {useCallback, useEffect, useState} from "react";
import {useConnection, useWallet} from "@solana/wallet-adapter-react";
import {WalletNotConnectedError} from "@solana/wallet-adapter-base";
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
        reference: new PublicKey(transactionConfig.reference),
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


export default function Pay() {
    // useEffect(() =>
    const {connection} = useConnection();
    const {publicKey, sendTransaction} = useWallet();
    const [paid, setPaid] = useState(0);

    const onClick = useCallback(async () => {
        if (!publicKey) throw new WalletNotConnectedError();

        let transactionData = await generateTransaction({
                amount: 0.01,
                label: 'label',
                memo: 'memo',
                message: 'message',
                recipient: 'GaPSKyQmNLNbBFzAv6WwECvHVxuFmzTGofNfmFGKrCoi',
                reference: Keypair.generate().publicKey.toBase58()
            }
        );

        const tx = await createTransaction(
            connection,
            publicKey,
            transactionData.recipient,
            transactionData.amount,
            {
                reference: transactionData.reference,
                splToken: transactionData.splToken,
                memo: transactionData.memo,
            }
        );

        const signature = await sendTransaction(tx, connection);
        const result = await connection.confirmTransaction(signature, 'confirmed');

        alert('paid - returning to merchant');
    }, [publicKey, sendTransaction, connection]);

    return (
        <button onClick={onClick} disabled={!publicKey}>
            Gimme your money!
        </button>
    );

    // const init = async() => {
    //     console.log('connecting');
    //     const connection = new Connection(clusterApiUrl('devnet'), 'confirmed');
    //
    //     const recipient = new PublicKey('Fm666rv83mpEYr9gbpvxx7k81CbWoGrcS54AGygXHVY4');
    //     const amount = new BigNumber(20);
    //     const reference = new Keypair().publicKey;
    //     const label = 'Jungle Cats store';
    //     const message = 'Jungle Cats store - your order - #001234';
    //     const memo = 'JC#4098';
    //
    //     const url = encodeURL({ recipient, amount, reference, label, message, memo });
    //
    //     console.log(url);
    //
    //     window.open(url);
    // }

    //     init();
    //     // Fm666rv83mpEYr9gbpvxx7k81CbWoGrcS54AGygXHVY4
    // }, []);
    //
    // return (
    //     <div>123</div>
    // )
}