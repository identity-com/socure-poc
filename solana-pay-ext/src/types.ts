import { PublicKey } from "@solana/web3.js";

export const enum PaymentStatus {
  QR = "qr",
  SCANNED = "scanned",
  TX_SEND = "tx_send",
  TX_CONFIRMED = "tx_confirmed",
  ERROR = "error", // see errorMessage
}

export const enum PaymentType  {
  SOL = "sol",
  SPL = "spl",
}

export type PaymentInfo = {
  type: PaymentType,
  mint: PublicKey,
  toWallet: PublicKey,
  amount: number | bigint,
  toTokenAccount: PublicKey,
  toTokenAccountBalanceBefore: number | bigint,
}

export type PaymentSession = {
  id: string // uuid
  url: string // solana pay url
  paymentInfo: PaymentInfo,
  status: PaymentStatus
  account?: PublicKey
  createdAt: Date
  errorMessage?: string // English Error Message on Error
}
