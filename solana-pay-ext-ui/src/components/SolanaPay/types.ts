import { PublicKey } from "@solana/web3.js";

export const enum PaymentStatus {
  QR = "qr",
  SCANNED = "scanned",
  TX_SEND = "tx_send",
  TX_CONFIRMED = "tx_confirmed", // TODO: Backend should poll the chain for this.
  ERROR = "error", // see errorMessage
}

export type PaymentSession = {
  id: string // uuid
  url: string // solana pay url
  status: PaymentStatus
  account?: PublicKey
  createdAt: Date
  errorMessage?: string // English Error Message on Error
}
