import React, {FC, useMemo, useCallback} from 'react';
import {ConnectionProvider, WalletProvider} from '@solana/wallet-adapter-react';
import {WalletAdapterNetwork} from '@solana/wallet-adapter-base';
import {WalletModalProvider, WalletMultiButton} from '@solana/wallet-adapter-react-ui';
import {clusterApiUrl} from '@solana/web3.js';
import {createTransaction} from '@solana/pay';
import {WalletNotConnectedError} from '@solana/wallet-adapter-base';
import {useConnection, useWallet} from '@solana/wallet-adapter-react';
import {getWalletAdapters} from "@solana/wallet-adapter-wallets";
import {SolanaPaymentConfigType, SolanaPaymentWindow} from "./types";
import {generateTransaction} from "./helpers/transaction-generator";

require('@solana/wallet-adapter-react-ui/styles.css');

declare const window: SolanaPaymentWindow;

const SolanaWalletPayment: FC = (config: SolanaPaymentConfigType) => {
    let network;
    let endpoint;

    if (config.cluster === WalletAdapterNetwork.Devnet) {
        network = WalletAdapterNetwork.Devnet;
        endpoint = useMemo(() => clusterApiUrl(network), [network]);
    } else {
        network = WalletAdapterNetwork.Mainnet;
        endpoint = config.cluster;
    }

    const wallets = useMemo(
        () => getWalletAdapters({network: network}),
        [network]
    );

    return (
        <ConnectionProvider endpoint={endpoint}>
            <WalletProvider wallets={wallets} autoConnect>
                <WalletModalProvider>
                    <WalletMultiButton/>
                    <PaymentButton transaction={config.transaction}/>
                </WalletModalProvider>
            </WalletProvider>
        </ConnectionProvider>
    );
};

const PaymentButton: FC = (props: { transaction: any }) => {
    const transaction = props.transaction;
    const { connection } = useConnection();
    const { publicKey, sendTransaction } = useWallet();
    const onClick = useCallback(
        async () => {
            if (!publicKey) {
                throw new WalletNotConnectedError();
            }

            try {
                window.SOLANA_ERROR_PRESENTER.clear();

                let transactionData = await generateTransaction(transaction);

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

                if (result.value.err === null) {
                    window.SOLANA_PAYMENT_VERIFIER.clearVerificationTimer();
                    window.SOLANA_PAYMENT_VERIFIER.verifyTransaction();
                }
            } catch (e) {
                if (e instanceof Error) {
                    window.SOLANA_ERROR_PRESENTER.showError(e.message);
                }
            }
        },
        [publicKey, sendTransaction, connection]
    );

    return (
        <button onClick={onClick} disabled={!publicKey} className='wallet-adapter-button wallet-adapter-button-trigger'>
            Pay with wallet
        </button>
    );
};

export default SolanaWalletPayment;
