import React from 'react';
import ReactDOM from 'react-dom/client';
import {SolanaPaymentWindow} from "./src/types";
import Main from "./src/main";

declare const window: SolanaPaymentWindow;

require('@solana/wallet-adapter-react-ui/styles.css');
require('./src/styles.css');

window.addEventListener('load', () => {
    const config = window.SOLANA_PAYMENT_CONFIG;
    console.log(config);

    (async () => {
        var body = new FormData();
        body.append("action", "solana_pay_create_transaction");

        const rawResponse = await fetch(config.adminUrl, {
            method: 'POST',
            headers: {
                'Accept': 'application/json'
            },
            body
        });
        const content = await rawResponse.json();
        console.log(content);
    })();

    const root = ReactDOM.createRoot(
        document.querySelector(config.walletsElementSelector) as HTMLElement
    );

    root.render(
        <React.StrictMode>
            <Main/>
        </React.StrictMode>
    );
});
