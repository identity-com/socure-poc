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
  mint: string // base58
  fromWallet?: string // base58
  toWallet: string // base58
  gatekeeperNetwork?: string // base58
  amount: number | bigint,
}

export type PaymentSession = {
  id: string // uuid
  url: string // solana pay url
  paymentInfo: PaymentInfo,
  status: PaymentStatus
  createdAt: Date
  errorMessage?: string // English Error Message on Error
}
