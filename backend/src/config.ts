import {Keypair, PublicKey} from "@solana/web3.js";
import {decode} from "bs58";

const parseEnv = <T>(x: T | undefined, name: string): T => {
  if (x === undefined) {
    throw new Error(`${name} config variable has not been provided`);
  }
  return x;
};

export const NETWORK = new PublicKey(parseEnv(process.env.NETWORK, 'NETWORK'));
export const GATEKEEPER = new PublicKey(parseEnv(process.env.GATEKEEPER, 'GATEKEEPER'));
export const MINT = new PublicKey(parseEnv(process.env.MINT, 'MINT'));
export const GATEKEEPER_ATA = new PublicKey(parseEnv(process.env.GATEKEEPER_ATA, 'GATEKEEPER_ATA'));
export const NETWORK_ATA = new PublicKey(parseEnv(process.env.NETWORK_ATA, 'NETWORK_ATA'));
export const FUNDER_ATA = new PublicKey(parseEnv(process.env.FUNDER_ATA, 'FUNDER_ATA'));
export const FUNDER_AUTHORITY = Keypair.fromSecretKey(decode(parseEnv(process.env.FUNDER_AUTHORITY, 'FUNDER_AUTHORITY')));
export const GATEKEEPER_AUTHORITY = Keypair.fromSecretKey(decode(parseEnv(process.env.GATEKEEPER_AUTHORITY, 'GATEKEEPER_AUTHORITY')));
