import {useState} from "react";
import {PaymentInfo, PaymentSession, PaymentType} from "./solpay/components/SolanaPay/types";
import SolanaPayModal from "./solpay/components/SolanaPay/SolanaPayModal";
import {API_URL} from "./solpay/components/SolanaPay/constants";
import SocureModal from "./solpay/components/Socure/SocureModal";
import {clusterApiUrl, Connection, PublicKey} from "@solana/web3.js";
import {confirmAndRedirect} from "../lib/utils";
import {GatewayToken} from "@identity.com/solana-gateway-ts";

export type SolanaPayProps = {
  amount: number,
  reference: string,
  toWallet: string,
  gatekeeperNetwork: string,
  mint?: string
}

export default function SolanaPay({
                                    gatekeeperNetwork,
                                    amount,
                                    toWallet,
                                    reference,
                                    mint = '4zMMC9srt5Ri5X14GAgXhaHii3GnPAEERYPJgZJDncDU',
                                  }: SolanaPayProps) {
  const providedPaymentInfo: PaymentInfo = {
    amount,
    type: PaymentType.SPL,
    mint,
    toWallet,
    gatekeeperNetwork
  }

  const [paymentSession, setPaymentSession] = useState<PaymentSession | undefined>()
  const [verificationPublicKey, setVerificationPublicKey] = useState<string | undefined>()

  const onClick = () => {
    if (!!paymentSession) {
      return
    }

    // fetch data
    fetch(API_URL, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(providedPaymentInfo),
    })
        .then(response => response.json())
        .then(data => setPaymentSession(data));
  }

  const connection = new Connection(clusterApiUrl('devnet'), 'confirmed');

  const statusUpdate = (session: PaymentSession) => {
    if (session.status === 'tx_confirmed' && session.paymentInfo.fromWallet) {
      confirmAndRedirect(new PublicKey(session.paymentInfo.fromWallet));
    }
  }
  const onSocureComplete = (token: GatewayToken) => {
    alert("complete?");
    onClick();
  }

  return (
      <>
        <button type="button" className="wallet-adapter-button wallet-adapter-button-trigger"
                onClick={onClick}>
          <svg width="16px" height="16px" viewBox="0 0 39 30" version="1.1" xmlns="http://www.w3.org/2000/svg">
            <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
              <g id="logo-wide-SVG" fill="#FFFFFF">
                <path
                    d="M38.8499225,6.80908008e-05 L38.849,9.264 L16.8611385,9.26474022 L15.5371385,10.5877402 L38.849,10.588 L38.8493861,17.21 L26.0513861,29.999 L0.000454204384,30 L0,20.735 L22.0744294,20.7353151 L23.3984294,19.4123151 L0,19.411 L0.000386067935,12.696 L12.7053861,0 L38.8499225,6.80908008e-05 Z"
                    id="Combined-Shape"></path>
              </g>
            </g>
          </svg>
          &nbsp; Pay with Solana Pay
        </button>

        <SolanaPayModal paymentSession={paymentSession} setPaymentSession={setPaymentSession}
                        setVerificationPublicKey={setVerificationPublicKey}
                        onStatus={statusUpdate}/>

        <SocureModal verificationPublicKey={verificationPublicKey}
                     setVerificationPublicKey={setVerificationPublicKey}
                     onComplete={() => onSocureComplete}
                     connection={connection}/>
      </>
  )
}