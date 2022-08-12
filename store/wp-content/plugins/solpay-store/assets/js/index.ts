import React from 'react';
import ReactDOM from 'react-dom';
import SolanaQrCodePayment from "./src/solana-qr-code-payment";
import SolanaWalletPayment from "./src/solana-wallet-payment";
import {SolanaPaymentWindow} from "./src/types";
import SolanaPaymentVerifier from "./src/solana-payment-verifier";
import SolanaErrorPresenter from "./src/solana-error-presenter";

declare const window: SolanaPaymentWindow;

window.addEventListener('load', () => {
    const config = window.SOLANA_PAYMENT_CONFIG;

    window.SOLANA_ERROR_PRESENTER = SolanaErrorPresenter.init(config.errorContainerElementSelector, config.errorMessagesMapping);
    window.SOLANA_PAYMENT_VERIFIER = SolanaPaymentVerifier.init(config);

    SolanaQrCodePayment.init(config);

    const domContainer = document.querySelector(config.walletsElementSelector);
    domContainer && ReactDOM.render(
        React.createElement(
            SolanaWalletPayment,
            {
                ...config
            }
        ),
        domContainer
    );
});
