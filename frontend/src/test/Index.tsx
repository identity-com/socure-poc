import React, {useCallback, useContext, useEffect, useMemo, useState} from "react";
import {clusterApiUrl, Keypair} from "@solana/web3.js";
import {WalletAdapterNetwork} from "@solana/wallet-adapter-base";
import {ConnectionProvider, useConnection, useWallet, WalletProvider} from "@solana/wallet-adapter-react";
import {WalletModalProvider, WalletMultiButton} from "@solana/wallet-adapter-react-ui";
import {PhantomWalletAdapter} from "@solana/wallet-adapter-wallets";

require('@solana/wallet-adapter-react-ui/styles.css');

const TOKEN_LOADING = "loading";
const TOKEN_UNAVAILABLE = "unavailable";
const TOKEN_AVAILABLE = "available";

function TokenCheck() {
    const {connection} = useConnection();
    const {publicKey, sendTransaction} = useWallet();

    const [token, setToken] = useState(TOKEN_LOADING);
    const [showIframe, setShowIframe] = useState(false);
    const [tokenKey, setTokenkey] = useState();

    let handler: Window | null;

    const getToken = useCallback(() => {
        // handler = window.open('/dummy');
        setShowIframe(true);
    }, []);

    useEffect(() => {
        if (publicKey) {
            // check for token here
            console.log("useEffect: " + publicKey?.toBase58());
            setToken(TOKEN_UNAVAILABLE);
        }
    }, [publicKey])

    useEffect(() => {
        window.addEventListener("message", function (e) {
            if (e.data.target === 'tokenUpdate') {
                setToken(TOKEN_AVAILABLE);
                setShowIframe(false);
            }
        });
    }, []);

    return (
        <div>
            {(token === TOKEN_LOADING && <div>checking for token</div>)
                || (token === TOKEN_AVAILABLE && <div>token available</div>)
                || (token === TOKEN_UNAVAILABLE && <div onClick={getToken}>token unavailable</div>)
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
                        <iframe src="/dummy" style={{
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
    const {connection} = useConnection();
    const {publicKey, sendTransaction} = useWallet();

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
        <ConnectionProvider endpoint={endpoint}>
            <WalletProvider wallets={wallets} autoConnect>
                <WalletModalProvider>
                    <WalletMultiButton/>
                    <Socure/>
                </WalletModalProvider>
            </WalletProvider>
        </ConnectionProvider>
    );
}
