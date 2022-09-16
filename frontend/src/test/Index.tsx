import React, {useCallback, useEffect, useMemo, useState} from "react";
import {
    clusterApiUrl,
    Keypair,
    LAMPORTS_PER_SOL,
    PublicKey,
    SystemProgram,
    Transaction
} from "@solana/web3.js";
import {WalletAdapterNetwork} from "@solana/wallet-adapter-base";
import {ConnectionProvider, useConnection, useWallet, WalletProvider} from "@solana/wallet-adapter-react";
import {WalletModalProvider, WalletMultiButton} from "@solana/wallet-adapter-react-ui";
import {PhantomWalletAdapter} from "@solana/wallet-adapter-wallets";
import {findGatewayToken} from "@identity.com/solana-gateway-ts";


require('@solana/wallet-adapter-react-ui/styles.css');

// TODO: Move to config
const gatekeeperNetwork = new PublicKey('tgnuXXNMDLK8dy7Xm1TdeGyc95MDym4bvAQCwcW21Bf');

const TOKEN_LOADING = "loading";
const TOKEN_UNAVAILABLE = "unavailable";
const TOKEN_AVAILABLE = "available";
const TOKEN_CHECKING = "checking";

function TokenCheck() {
    const {connection} = useConnection();
    const {publicKey, sendTransaction} = useWallet();

    const [token, setToken] = useState(TOKEN_LOADING);
    const [payment, setPayment] = useState(false);

    const [showIframe, setShowIframe] = useState(false);
    const getToken = useCallback(() => {
        setShowIframe(true);
    }, []);

    const checkForToken = () => {
        if (publicKey && token === TOKEN_CHECKING) {
            setTimeout(async () => {
                const token = await findGatewayToken(connection, publicKey, gatekeeperNetwork);
                if (token) {
                    setToken(TOKEN_AVAILABLE);
                } else {
                    checkForToken();
                }
            }, 300);
        }
    }

    useEffect(() => {
        (async () => {
            if (publicKey) {
                const token = await findGatewayToken(connection, publicKey, gatekeeperNetwork);
                if (token) console.log("found token: " + JSON.stringify(token, null, 2))
                setToken(token ? TOKEN_AVAILABLE : TOKEN_UNAVAILABLE);
            }
        })();
    }, [publicKey, connection])

    const makePayment = useCallback(async () => {
        if (publicKey) {
            const transaction = new Transaction().add(
                SystemProgram.transfer({
                    fromPubkey: publicKey,
                    toPubkey: Keypair.generate().publicKey,
                    lamports: LAMPORTS_PER_SOL / 100,
                })
            );

            const {
                value: {blockhash, lastValidBlockHeight}
            } = await connection.getLatestBlockhashAndContext();

            const signature = await sendTransaction(transaction, connection);
            await connection.confirmTransaction({blockhash, lastValidBlockHeight, signature});

            setPayment(true);
        }
    }, [connection, publicKey, sendTransaction])


    window.addEventListener("message", function (e) {
        if (e.data.target === 'tokenUpdate') {
            setToken(TOKEN_CHECKING);

            checkForToken();

            setShowIframe(false);
        }
    });


    const cancelChecking = () => {
        setToken(TOKEN_UNAVAILABLE);
    }

    return (
        <div>
            {
                payment && <div>Payment Complete</div>
            }
            {(!payment && token === TOKEN_LOADING && <div>Checking for Token</div>)
                || (!payment && token === TOKEN_CHECKING &&
                    <div>Waiting for Token: <button style={{color: "blue"}} onClick={cancelChecking}>Cancel</button>
                    </div>)
                || (!payment && token === TOKEN_AVAILABLE &&
                    <div>Token Available: <button style={{color: "blue"}} onClick={makePayment}>Make Payment</button>
                    </div>)
                || (!payment && token === TOKEN_UNAVAILABLE &&
                    <div>Token Unavailable: <button style={{color: "blue"}} onClick={getToken}>Start
                        Verification</button></div>)
            }
            {
                showIframe &&
                <div style={{
                    position: "fixed",
                    top: "0",
                    bottom: "0",
                    left: "0",
                    right: "0",
                    zIndex: "99999",
                    backgroundColor: "#0000007F"
                }}>
                    <div style={{
                        display: "flex",
                        justifyContent: "center",
                        alignItems: "center",
                        width: "100%",
                        height: "100%"
                    }}>
                        <iframe title="Socure" src={`/#/verify/${publicKey ? publicKey.toBase58() : ''}`} style={{
                            width: "90%",
                            height: "90%",
                            backgroundColor: "#fff"
                        }}/>
                    </div>
                </div>
            }
        </div>
    )
}


function Socure() {
    const {publicKey} = useWallet();

    return (
        publicKey ?
            <TokenCheck/>
            :
            <div>connect wallet</div>
    )
}

export default function TestIndex() {
    const network = WalletAdapterNetwork.Devnet;
    const endpoint = useMemo(() => clusterApiUrl(network), [network]);

    const wallets = useMemo(
        () => [
            new PhantomWalletAdapter(),
        ],
        []
    );

    return (
        <div style={{display: "flex", alignItems: "center", flexDirection: "column"}}>
            <ConnectionProvider endpoint={endpoint}>
                <WalletProvider wallets={wallets}>
                    <WalletModalProvider>
                        <WalletMultiButton/>
                        <Socure/>
                    </WalletModalProvider>
                </WalletProvider>
            </ConnectionProvider>
        </div>
    );
}
