import {Cluster} from "@solana/web3.js";
//
export type SolanaPaymentConfigType = {
    adminUrl: string,
    transaction: {
        reference: string,
        recipient: string,
        splToken: string,
        amount: number,
        label: string,
        message: string,
        memo: string,
    },
    cluster: Cluster | undefined,
    verificationServiceUrl: string,
    verificationServiceInterval: number,
    verificationServiceTimeout: number,
    paymentNotificationEndpoint: string,
    timerContainerSelector: string,
    timeoutTimerSelector: string,
    qrCodeElementSelector: string,
    walletsElementSelector: string,
    finalConfirmationElementSelector: string,
    finalConfirmationMessage: string,
    errorContainerElementSelector: string,
    errorMessagesMapping: Array<{error: string, formattedText: string}>,
}

export interface SolanaPaymentWindow extends Window {
    // SOLANA_ERROR_PRESENTER: SolanaErrorPresenter;
    SOLANA_PAYMENT_CONFIG: SolanaPaymentConfigType;
    // SOLANA_PAYMENT_VERIFIER: SolanaPaymentVerifier;
    SOLANA_PAY_WC_NONCE_CONFIG: { nonce: string };
}
