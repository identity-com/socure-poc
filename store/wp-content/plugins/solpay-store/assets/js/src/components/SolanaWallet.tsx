import {ConnectionProvider, useConnection, useWallet, WalletProvider} from "@solana/wallet-adapter-react";
import {WalletModalProvider, WalletMultiButton} from "@solana/wallet-adapter-react-ui";
import React, {useEffect, useMemo, useState} from "react";
import {WalletAdapterNetwork, WalletNotConnectedError} from "@solana/wallet-adapter-base";
import {clusterApiUrl, LAMPORTS_PER_SOL, PublicKey, SystemProgram, Transaction} from "@solana/web3.js";
import supportedWallets from "../config/wallets";
import {SolanaPaymentWindow} from "../types";
import {findGatewayToken, GatewayToken} from "@identity.com/solana-gateway-ts";
import {GATEKEEPER_NETWORK, MINT_ADDRESS, SOCURE_UI_BASE_URL} from "../config/constants";
import IFrameContainer from "./IFrameContainer";
import {
  ASSOCIATED_TOKEN_PROGRAM_ID,
  createTransferInstruction,
  getAssociatedTokenAddress,
  TOKEN_PROGRAM_ID
} from "@solana/spl-token";
import {confirmAndRedirect, createAssociatedTokenAccountInstructionIfNeeded} from "../lib/utils";
import SocureModal from "./solpay/components/Socure/SocureModal";

declare const window: SolanaPaymentWindow;


function ConnectedApp() {
  const [token, setToken] = useState<GatewayToken | null | undefined>(undefined);
  let [tokenCheck, setTokenCheck] = useState<boolean | undefined>(undefined);
  let [paying, setPaying] = useState<boolean>(false);
  const [verificationPublicKey, setVerificationPublicKey] = useState<string | undefined>()

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

  // window.addEventListener("message", function (e) {
  //   if (e.data.target === 'tokenUpdate') {
  //     setTokenCheck(false);
  //     tokenCheck = false; // ?!?
  //     setShowIframe(false);
  //
  //     checkForToken();
  //   }
  // });

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

      const toTokenAccount = await getAssociatedTokenAddress(
          new PublicKey(MINT_ADDRESS),
          new PublicKey(window.SOLANA_PAYMENT_CONFIG.transaction.recipient),
          false,
          TOKEN_PROGRAM_ID,
          ASSOCIATED_TOKEN_PROGRAM_ID
      );

      const fromTokenAccount = await getAssociatedTokenAddress(
          new PublicKey(MINT_ADDRESS),
          publicKey,
          false,
          TOKEN_PROGRAM_ID,
          ASSOCIATED_TOKEN_PROGRAM_ID
      );

      console.log("From token account: " + fromTokenAccount);
      console.log("To token account: " + toTokenAccount);

      const optionalCreateAssociatedTokenAccountInstructions = await createAssociatedTokenAccountInstructionIfNeeded(
          connection,
          publicKey,
          toTokenAccount,
          new PublicKey(MINT_ADDRESS),
          new PublicKey(window.SOLANA_PAYMENT_CONFIG.transaction.recipient)
      )

      const transferInstruction = createTransferInstruction(
          fromTokenAccount, toTokenAccount, publicKey, window.SOLANA_PAYMENT_CONFIG.transaction.amount, [], TOKEN_PROGRAM_ID);

      transferInstruction.keys.push({
        pubkey: new PublicKey(window.SOLANA_PAYMENT_CONFIG.transaction.reference),
        isWritable: false,
        isSigner: false
      });

      const transaction = new Transaction({}).add(
          ...optionalCreateAssociatedTokenAccountInstructions,
          transferInstruction
      )

      const {
        context: {slot: minContextSlot},
        value: {blockhash, lastValidBlockHeight}
      } = await connection.getLatestBlockhashAndContext();

      const signature = await sendTransaction(transaction, connection, {minContextSlot});

      const result = await connection.confirmTransaction({blockhash, lastValidBlockHeight, signature});
      // TODO: Disable UI
      if (result.value.err === null) {
        confirmAndRedirect(toTokenAccount);
      }
    } catch (e) {
      alert(e);
      console.log(e);
      setPaying(false);
    }
  }

  return (
      !publicKey && <></> ||
      !!verificationPublicKey && <SocureModal verificationPublicKey={verificationPublicKey}
                                              setVerificationPublicKey={setVerificationPublicKey}
                                              onComplete={setToken}
                                              connection={connection}/> ||
      tokenCheck === false && <div className="status-text">Checking for token</div> ||
      (
          token === undefined && <div className="status-text">Checking For Pass</div> ||
          token === null &&
          <button onClick={() => publicKey && setVerificationPublicKey(publicKey.toBase58())}
                  className="wallet-adapter-button wallet-adapter-button-trigger verify-button">Verify
            Identity</button> ||
          <button onClick={makePayment} disabled={paying}
                  className="wallet-adapter-button wallet-adapter-button-trigger">Make Payment</button>
      )
  )
}

export default function SolanaWallet() {
  const network = WalletAdapterNetwork.Devnet;
  const endpoint = useMemo(() => clusterApiUrl(window.SOLANA_PAYMENT_CONFIG.cluster), [network]);

  const wallets = useMemo(
      () => supportedWallets,
      []
  );

  return (
      <ConnectionProvider endpoint={endpoint}>
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