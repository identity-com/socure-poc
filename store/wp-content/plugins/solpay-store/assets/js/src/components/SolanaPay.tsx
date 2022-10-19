import {useEffect, useState} from "react";
import {PaymentInfo, PaymentSession, PaymentType} from "./solpay/components/SolanaPay/types";
import SolanaPayModal from "./solpay/components/SolanaPay/SolanaPayModal";
import {API_URL} from "./solpay/components/SolanaPay/constants";
import SocureModal from "./solpay/components/Socure/SocureModal";
import {clusterApiUrl, Connection} from "@solana/web3.js";

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
                                    mint = '4zMMC9srt5Ri5X14GAgXhaHii3GnPAEERYPJgZJDncDU'
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

  return (
      <>
        <button className="wallet-adapter-button wallet-adapter-button-trigger"
                onClick={onClick}>Pay with Solana Pay
        </button>

        <SolanaPayModal paymentSession={paymentSession} setPaymentSession={setPaymentSession}
                        setVerificationPublicKey={setVerificationPublicKey}/>

        <SocureModal verificationPublicKey={verificationPublicKey}
                     setVerificationPublicKey={setVerificationPublicKey}
                     onComplete={onClick}
                     connection={connection}/>
      </>
  )
}