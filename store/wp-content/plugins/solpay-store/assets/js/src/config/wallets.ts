import {
    PhantomWalletAdapter,
    SolflareWalletAdapter,
    SolletExtensionWalletAdapter,
    SolletWalletAdapter
} from "@solana/wallet-adapter-wallets";

export default [
    new PhantomWalletAdapter(),
    new SolletWalletAdapter(),
    new SolflareWalletAdapter(),
    new SolletExtensionWalletAdapter()
];