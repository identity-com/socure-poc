import {Keypair} from "@solana/web3.js";

export default function Dummy() {
    const close = () => {
        window.parent.postMessage({
            target: "tokenUpdate",
            token: Keypair.generate().publicKey.toBase58()
        },"*" );
    }


    return (
        <div className="h-full flex justify-center items-center" onClick={close}>start</div>
    )
}
