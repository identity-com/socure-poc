import React, { useState } from 'react';
import './App.css';
import SolanaPayModal from "./components/SolanaPay/SolanaPayModal";
import { PaymentInfo, PaymentSession, PaymentType } from "./components/SolanaPay/types";
import { PublicKey } from "@solana/web3.js";
import { API_URL } from "./components/SolanaPay/constants";

function App() {
  const [paymentSession, setPaymentSession] = useState<PaymentSession | undefined>()


  const paymentInfo: PaymentInfo = {
    amount: 100000, // 0.1 USDC
    type: PaymentType.SPL,
    mint: '4zMMC9srt5Ri5X14GAgXhaHii3GnPAEERYPJgZJDncDU', // USDC mint
    toWallet: 'EPPGP2j7o2epEh3YP5ee3Y17KQK3nWvFu1MoSi1WBH9c', // my wallet
  }

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
      body: JSON.stringify(paymentInfo),
    })
      .then(response => response.json())
      .then(data => setPaymentSession(data));
  }


  return (
    <div className="App">
      <header className="App-header">

        <button
          type="button"
          className="inline-flex items-center rounded-md border border-transparent bg-indigo-600 px-6 py-3 text-base font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2"
          onClick={onClick}
        >
          Start Payment Flow
        </button>
        <SolanaPayModal paymentSession={paymentSession} setPaymentSession={setPaymentSession} />
      </header>
    </div>
  );
}

export default App;
