import {SolanaPaymentConfigType, SolanaPaymentWindow} from "./types";
import SolanaTimeoutTimer from "./solana-timeout-timer";

declare const window: SolanaPaymentWindow;

export default class SolanaPaymentVerifier {
    private config: SolanaPaymentConfigType;
    private isWaitingForStoreResponse: boolean = false;
    private verificationTimer: any;
    private timeoutTimer: SolanaTimeoutTimer;

    constructor(config: SolanaPaymentConfigType) {
        this.config = config;

        this.verifyTransaction();
        this.timeoutTimer = new SolanaTimeoutTimer({
            timerSelector: this.config.timeoutTimerSelector,
            timeout: this.config.verificationServiceTimeout,
            timeoutCallback: () => {
                this.clearVerificationTimer();
                window.SOLANA_ERROR_PRESENTER.clear().showError('payment_timeout');
            }
        });
    }

    public verifyTransaction(): void {
        this
            .startVerification()
            .then(this.notifyStore.bind(this))
            .then(SolanaPaymentVerifier.handleStoreResponse)
            .catch(console.log);
    }

    private async startVerification(): Promise<any> {
        return new Promise((resolve, reject) => {
            this.verificationTimer = setInterval(async () => {
                try {
                    let queryParams = new URLSearchParams(this.getTransactionVerificationParameters());
                    let data = await (
                        await fetch(`${this.config.verificationServiceUrl}?${queryParams.toString()}`)
                    ).json();

                    if (data.success) {
                        this.clearVerificationTimer();
                        this.showFinalConfirmationMessage();

                        resolve(data);
                    }
                } catch (e: any) {
                    this.clearVerificationTimer();
                    reject(e);
                }
            }, this.config.verificationServiceInterval);
        });
    }

    public clearVerificationTimer(): void {
        this.timeoutTimer.stop();
        clearInterval(this.verificationTimer);
    }

    private notifyStore(): Promise<any> {
        if (this.isWaitingForStoreResponse === true) {
            return;
        }

        this.isWaitingForStoreResponse = true;

        const formData = new FormData();
        const parameters = this.getTransactionVerificationParameters();

        for (let key in parameters) {
            formData.append(key, parameters[key]);
        }

        formData.append('security', window.SOLANA_PAY_WC_NONCE_CONFIG.nonce);

        return fetch(this.config.paymentNotificationEndpoint, {
            method: 'POST',
            body: formData
        }).then(response => response.json());
    }

    private static handleStoreResponse(response: { errors?: any, redirectUrl? : string }): void {
        if (response.errors) {
            window.SOLANA_ERROR_PRESENTER.clear().showErrors(response.errors);

            return;
        }

        if (response.redirectUrl) {
            window.location.href = response.redirectUrl;
        }
    }

    private getTransactionVerificationParameters(): any {
        const transaction = this.config.transaction;

        let params: any = {
            reference: transaction.reference,
            recipient: transaction.recipient,
            amount: transaction.amount,
            label: transaction.label,
            message: transaction.message,
            memo: transaction.memo,
            cluster: this.config.cluster
        }

        if (transaction.splToken) {
            params.splToken = transaction.splToken.toString();
        }

        return params;
    }

    private showFinalConfirmationMessage(): void {
        let qrCodeElement = document.querySelector(this.config.qrCodeElementSelector) as HTMLElement;
        let walletsElement = document.querySelector(this.config.walletsElementSelector) as HTMLElement;
        let timerContainerElement = document.querySelector(this.config.timerContainerSelector) as HTMLElement;
        let finalConfirmationMessageElement = document.querySelector(this.config.finalConfirmationElementSelector) as HTMLElement;

        if (qrCodeElement) {
            qrCodeElement.classList.add('wc-solana-qr-container--hidden');
            qrCodeElement.style.display = 'none';
        }

        if (walletsElement) {
            walletsElement.classList.add('wc-solana-wallet-container--hidden');
            walletsElement.style.display = 'none';
        }

        if (timerContainerElement) {
            timerContainerElement.classList.add('wc-solana-payment-timer--hidden');
            timerContainerElement.style.display = 'none';
        }

        if (finalConfirmationMessageElement) {
            finalConfirmationMessageElement.classList.add('wc-solana-final-confirmation--displayed');
            finalConfirmationMessageElement.style.display = 'block';
            finalConfirmationMessageElement.innerHTML = this.config.finalConfirmationMessage;
        }
    }

    public static init(config: SolanaPaymentConfigType): SolanaPaymentVerifier {
        return new SolanaPaymentVerifier(config);
    }
}
