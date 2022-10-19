import {useEffect, useState} from "react";
import {clusterApiUrl, Connection, PublicKey} from "@solana/web3.js";
import IFrameContainer from "./IFrameContainer";
import {GATEKEEPER_NETWORK, SOLPAY_UI_BASE_URL, SOCURE_UI_BASE_URL} from "../config/constants";
import {onGatewayToken} from "@identity.com/solana-gateway-ts";
import {confirmAndRedirect} from "../lib/utils";

export type SolanaPayProps = {
  amount: number,
  reference: string,
  recipient: string,
  gatekeeper: string
}

export default function SolanaPay({gatekeeper, amount, recipient, reference}: SolanaPayProps) {
  const [solanaPayVisible, setSolanaPayVisible] = useState(false);
  const [socureVisible, setSocureVisible] = useState(false);
  const [wallet, setWallet] = useState<string | undefined>(undefined);

  /**
   * If there's no token, initiate the socure process
   */
  const handleMissingTokenCallback = () => {
    setSolanaPayVisible(false);
    setSocureVisible(true);
  }

  /**
   * Handles errors from the solana pay callback
   */
  const handleSolanaPayError = (data: any) => {
    switch (data.errorType) {
      case 'missing-token':
        handleMissingTokenCallback();
        break;
    }
  }

  /**
   * Handles errors from the solana pay callback
   */
  const handleSolanaPayConfirmed = (data: any) => {
    if(!data.wallet) return;
    confirmAndRedirect(new PublicKey(data.wallet));
  }

  /**
   * Handles callbacks from the Solana pay process
   */
  const handleSolanaPayCallback = (data: any) => {
    if (data.wallet) {
      setWallet(data.wallet);
    }

    switch (data.status) {
      case 'error':
        handleSolanaPayError(data);
        break;
      case 'tx_confirmed':
        handleSolanaPayConfirmed(data);
        break;

    }
  }

  useEffect(() => {
    console.log("WALLET CHANGED: " + wallet)
  }, [wallet])

  const handleSocureCallback = (socureWallet: string) => {
    const connection = new Connection(clusterApiUrl('devnet'), 'confirmed');

    onGatewayToken(connection, new PublicKey(socureWallet), GATEKEEPER_NETWORK, (token) => {
      // In case user decides to switch wallets
      setWallet(undefined);

      setSolanaPayVisible(true);
      setSocureVisible(false);
    });
  }

  useEffect(() => {
    // handle callback events from the iframes (generalized to solana pay and socure)
    window.addEventListener('message', (e) => {
      switch (e.data.target) {
        case 'solana-pay':
          handleSolanaPayCallback(e.data);
          break;
        case 'socure':
          handleSocureCallback(e.data.wallet);
          break;
        default:
          console.log("Recieved UNKNWON event: " + JSON.stringify(e.data, null, 2))
      }
    });
  }, []);

  return (
      <>
        <button className="wallet-adapter-button wallet-adapter-button-trigger"
                onClick={() => setSolanaPayVisible(true)}>Pay with Solana Pay
        </button>
        <IFrameContainer visible={solanaPayVisible} hide={() => setSolanaPayVisible(false)}
                         source={`${SOLPAY_UI_BASE_URL}?amount=${amount}&reference=${reference}&recipient=${recipient}&gatekeeper=${gatekeeper}&autostart=true`}/>

        <IFrameContainer visible={socureVisible && !!wallet} hide={() => setSocureVisible(false)}
                         source={`${SOCURE_UI_BASE_URL}${wallet}`}/>
      </>
  )
}