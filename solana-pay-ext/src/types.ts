import { PublicKey } from "@solana/web3.js";

export type PaymentSession = {
  id: string // uuid
  url: string // solana pay url
  wallet?: PublicKey
  createdAt: Date
}
