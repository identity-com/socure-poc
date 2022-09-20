import React, {useEffect, useMemo, useState} from 'react';
import {SolanaPaymentWindow} from "./types";
import {
    PhantomWalletAdapter,
    SolflareWalletAdapter,
    SolletExtensionWalletAdapter,
    SolletWalletAdapter
} from "@solana/wallet-adapter-wallets";
import {ConnectionProvider, useConnection, useWallet, WalletProvider} from "@solana/wallet-adapter-react";
import {WalletModalProvider, WalletMultiButton} from "@solana/wallet-adapter-react-ui";
import {clusterApiUrl, Keypair, LAMPORTS_PER_SOL, PublicKey, SystemProgram, Transaction} from "@solana/web3.js";
import {WalletAdapterNetwork, WalletNotConnectedError} from "@solana/wallet-adapter-base";
import {findGatewayToken, GatewayToken} from "@identity.com/solana-gateway-ts";

const GATEKEEPER_NETWORK = new PublicKey('tgnuXXNMDLK8dy7Xm1TdeGyc95MDym4bvAQCwcW21Bf');

declare const window: SolanaPaymentWindow;

type IFrameProps = {
    publicKey: PublicKey | null,
    showIframe?: (show: boolean) => void
}

function IFrame({publicKey, showIframe}: IFrameProps) {
    alert("???");
    if (!publicKey) {
        return (<></>);
    }

    // setTimeout(() => {
    //     window.parent.postMessage({
    //         target: "tokenUpdate"
    //     },"*" );
    // }, 1000)

    // Required to force socure not to "remember" previous validations
    sessionStorage.clear();

    return (<div className="socure-iframe-background" onClick={() => showIframe && showIframe(false)}>
        <div className="socure-iframe-wrapper">
            <iframe src={`https://socure-demo.identity.com/#/verify/${publicKey.toBase58()}`}
                    className="socure-iframe" title="Socure"/>
        </div>
    </div>)
}

function ConnectedApp() {
    const [token, setToken] = useState<GatewayToken | null | undefined>(undefined);
    const [showIframe, setShowIframe] = useState(false);
    let [tokenCheck, setTokenCheck] = useState<boolean | undefined>(undefined);
    let [paying, setPaying] = useState<boolean>(false);

    const {publicKey, sendTransaction} = useWallet();
    const {connection} = useConnection();

    const checkForToken = () => {
        if (publicKey && tokenCheck === false) {
            setTimeout(async () => {
                console.log("Checking for token");

                let token;
                try {
                    token = await findGatewayToken(connection, publicKey, GATEKEEPER_NETWORK);
                } catch (e) {
                    console.log("Error fetching token", e);
                }

                if (token) {
                    setToken(token);
                    setTokenCheck(true);
                } else {
                    checkForToken();
                }
            }, 2000);
        }
    }

    window.addEventListener("message", function (e) {
        if (e.data.target === 'tokenUpdate') {
            setTokenCheck(false);
            tokenCheck = false; // ?!?
            setShowIframe(false);

            checkForToken();
        }
    });

    useEffect(() => {
        (async () => {
            if (publicKey) {
                const token = await findGatewayToken(connection, publicKey, GATEKEEPER_NETWORK);
                setToken(token);
            }
        })();
    }, [publicKey])

    const makePayment = async () => {
        if (!publicKey) throw new WalletNotConnectedError();

        try {
            setPaying(true);

            const instruction = SystemProgram.transfer({
                fromPubkey: publicKey,
                toPubkey: new PublicKey(window.SOLANA_PAYMENT_CONFIG.transaction.recipient),
                lamports: window.SOLANA_PAYMENT_CONFIG.transaction.amount * LAMPORTS_PER_SOL,
            });
            instruction.keys.push({
                pubkey: new PublicKey(window.SOLANA_PAYMENT_CONFIG.transaction.reference),
                isWritable: false,
                isSigner: false
            });

            const transaction = new Transaction().add(instruction);

            const {
                context: {slot: minContextSlot},
                value: {blockhash, lastValidBlockHeight}
            } = await connection.getLatestBlockhashAndContext();

            const signature = await sendTransaction(transaction, connection, {minContextSlot});

            const result = await connection.confirmTransaction({blockhash, lastValidBlockHeight, signature});
            // TODO: Disable UI
            if (result.value.err === null) {
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
                    setPaying(false);
                    return;
                }

                if (response.redirectUrl) {
                    window.location.href = response.redirectUrl;
                }
            }
        } catch(e) {
            alert(e);
            console.log(e);
            setPaying(false);
        }
    }

    return (
        !publicKey && <></> ||
        showIframe && <IFrame publicKey={publicKey} showIframe={setShowIframe}/> ||
        tokenCheck === false && <div className="status-text">Checking for token</div> ||
        (
            token === undefined && <div className="status-text">Checking For Pass</div> ||
            token === null &&
            <button onClick={() => setShowIframe(true)}
                    className="wallet-adapter-button wallet-adapter-button-trigger verify-button">Verify
                Identity</button> ||
            <button onClick={makePayment} disabled={paying}
                    className="wallet-adapter-button wallet-adapter-button-trigger">Make Payment</button>
        )
    )
}

function Main() {
    const network = WalletAdapterNetwork.Devnet;
    const endpoint = useMemo(() => clusterApiUrl(window.SOLANA_PAYMENT_CONFIG.cluster), [network]);

    const wallets = useMemo(
        () => [
            new PhantomWalletAdapter(),
            new SolletWalletAdapter(),
            new SolflareWalletAdapter(),
            new SolletExtensionWalletAdapter()
        ],
        []
    );

    return (
        <ConnectionProvider endpoint={endpoint}>
            <h2 className="woocommerce-order-details__title">Make Payment</h2>
            <WalletProvider wallets={wallets}>
                <WalletModalProvider>
                    <div className="button-container">
                        <WalletMultiButton/>
                        <ConnectedApp/>
                    </div>
                </WalletModalProvider>
            </WalletProvider>
        </ConnectionProvider>
    )
}

export default Main;