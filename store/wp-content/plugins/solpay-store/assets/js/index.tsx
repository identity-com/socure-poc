import React from 'react';
import ReactDOM from 'react-dom/client';
import {SolanaPaymentWindow} from "./src/types";
import Main from "./src/main";

import jquery from 'jquery';

declare const window: SolanaPaymentWindow;

require('@solana/wallet-adapter-react-ui/styles.css');
require('./src/output.css');

window.addEventListener('load', () => {
  if (!window.SOLANA_PAYMENT_CONFIG) return;
  const config = window.SOLANA_PAYMENT_CONFIG;
  console.log(config);
  //
  // (async () => {
  //   var body = new FormData();
  //   body.append("action", "solana_pay_create_transaction");
  //
  //   const rawResponse = await fetch(config.adminUrl, {
  //     method: 'POST',
  //     headers: {
  //       'Accept': 'application/json'
  //     },
  //     body
  //   });
  //   const content = await rawResponse.json();
  //   console.log(content);
  // })();
  // @ts-ignore
  // jQuery('body').on('updated_checkout', function(e){
    const elem = document.querySelector(config.walletsElementSelector) as HTMLElement;
    if (elem) {
      const root = ReactDOM.createRoot(elem);

      root.render(
          <React.StrictMode>
            <Main/>
          </React.StrictMode>
      );
    }
  // });
});
