import {createQR, encodeURL} from '@solana/pay';
import {TransactionType} from "./transaction-generator";

export default async function generateQrCode(transaction: TransactionType, qrCodeElementSelector): Promise<void> {
    const url = encodeURL(transaction);
    const qrCode = createQR(url);

    let qrCodeElement = document.querySelector(qrCodeElementSelector);

    if (!qrCodeElement) {
        qrCodeElement = document.createElement('img');
        document.body.prepend(qrCodeElement);
    }

    qrCodeElement.src =  URL.createObjectURL(await qrCode.getRawData());
}
