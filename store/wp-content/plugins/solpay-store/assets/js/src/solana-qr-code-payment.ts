import generateQrCode from './helpers/qr-code-generator';
import {generateTransaction, TransactionType} from "./helpers/transaction-generator";
import {SolanaPaymentConfigType} from "./types";

export default class SolanaQrCodePayment {
    private config: SolanaPaymentConfigType;
    private transaction: TransactionType = null;

    constructor(config: SolanaPaymentConfigType) {
        this.config = config;

        this.refreshQrCode();
    }

    private async refreshQrCode() {
        try {
            await this.generateTransaction();
            await this.updateQRCode();
        } catch (e) {
            console.log(e);
        }
    }

    private async generateTransaction(): Promise<void> {
        if (this.transaction !== null) {
            return;
        }

        this.transaction = await generateTransaction(this.config.transaction);
    }

    private async updateQRCode(): Promise<void> {
        await generateQrCode(this.transaction, this.config.qrCodeElementSelector);
    }

    public static init(config): SolanaQrCodePayment {
        return new SolanaQrCodePayment(config);
    }
}
