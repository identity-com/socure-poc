import React, {useMemo} from 'react';
import {SolanaPaymentWindow} from "./types";
import SolanaPay from "./components/SolanaPay";
import {GATEKEEPER_NETWORK} from "./config/constants";
import SolanaWalet from "./components/SolanaWallet";

declare const window: SolanaPaymentWindow;

function Main() {
  return (
      <div>
        <h2 className="woocommerce-order-details__title">Make Payment</h2>

        <div style={{paddingBottom: '1em'}}>
          <SolanaWalet/>
        </div>
        <SolanaPay recipient={window.SOLANA_PAYMENT_CONFIG.transaction.recipient}
                   amount={window.SOLANA_PAYMENT_CONFIG.transaction.amount as number}
                   gatekeeper={GATEKEEPER_NETWORK.toBase58()}
                   reference={window.SOLANA_PAYMENT_CONFIG.transaction.reference}/>
      </div>
  )
}

export default Main;