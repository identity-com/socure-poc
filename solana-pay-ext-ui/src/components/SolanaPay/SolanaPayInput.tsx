import { PaymentInfo } from "./types";
import { PublicKey } from "@solana/web3.js";
import {GATEKEEPER_NETWORK} from "./constants";

interface SolanaPayInputProps {
  paymentInfo: PaymentInfo;
  setPaymentInfo: (paymentInfo: PaymentInfo) => void;
}

export default function SolanaPayInput({paymentInfo, setPaymentInfo}: SolanaPayInputProps) {

  const setGatekeeperNetwork = (checked: boolean) => {
    const gatekeeperNetwork = checked ? GATEKEEPER_NETWORK : undefined;
    setPaymentInfo({...paymentInfo, gatekeeperNetwork});
  }


  const setToWallet = (value: string) => {
    try {
      const toWallet = new PublicKey(value);
      setPaymentInfo({...paymentInfo, toWallet: toWallet.toBase58()})
    } catch (e) {
    }
  }

  // const setMint = (value: string) => {
  //   try {
  //     const mint = new PublicKey(value);
  //     setPaymentInfo({...paymentInfo, mint: mint.toBase58()})
  //   } catch (e) {
  //   }
  // }

  const setAmount = (value: string) => {
    const valueAsNumber = parseFloat(value);
    if (!isNaN(valueAsNumber)) {
      setPaymentInfo({
        ...paymentInfo,
        amount: BigInt(valueAsNumber * 1_000_000),
      })
    }
  }

  return (
    <div className="overflow-hidden bg-white shadow sm:rounded-lg">
      <div className="px-4 py-5 sm:px-6">
        <h3 className="text-lg font-medium leading-6 text-gray-900">Payment Information</h3>
        <p className="mt-1 max-w-2xl text-sm text-gray-500">Solana Pay Details:</p>
      </div>
      <div className="border-t border-gray-200">
        <dl>
          <div className="bg-white px-4 py-5 sm:grid sm:grid-cols-5 sm:gap-4 sm:px-6">
            <dt className="text-sm font-medium text-gray-500">To</dt>
            <dd className="mt-1 text-sm text-gray-900 sm:col-span-4 sm:mt-0">
              <input
                type="text"
                name="toWallet"
                id="toWallet"
                className="block w-full rounded-md border-gray-300 pl-7 pr-12 focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"
                defaultValue={paymentInfo.toWallet}
                onChange={(e) => setToWallet(e.target.value)}
              />
            </dd>
          </div>
          <div className="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-5 sm:gap-4 sm:px-6">
            <dt className="text-sm font-medium text-gray-500">Amount</dt>
            <dd className="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">
                <input
                  type="text"
                  name="amout"
                  id="amout"
                  className="block w-full rounded-md border-gray-300 pl-7 pr-12 focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"
                  placeholder="0.00"
                  aria-describedby="price-currency"
                  defaultValue={Number(paymentInfo.amount) / 1000000}
                  // value={Number(paymentInfo.amount) / 1000000}
                  onChange={(e) => setAmount(e.target.value)}
                />
            </dd>
          </div>
          {/*<div className="bg-white px-4 py-5 sm:grid sm:grid-cols-5 sm:gap-4 sm:px-6">*/}
          {/*  <dt className="text-sm font-medium text-gray-500">Mint</dt>*/}
          {/*  <dd className="mt-1 text-sm text-gray-900 sm:col-span-4 sm:mt-0">*/}
          {/*    <input*/}
          {/*      type="text"*/}
          {/*      name="mint"*/}
          {/*      id="mint"*/}
          {/*      className="block w-full rounded-md border-gray-300 pl-7 pr-12 focus:border-indigo-500 focus:ring-indigo-500 sm:text-sm"*/}
          {/*      // value={Number(paymentInfo.amount) / 1000000}*/}
          {/*      defaultValue={paymentInfo.mint}*/}
          {/*      onChange={(e) => setMint(e.target.value)}*/}
          {/*    />*/}
          {/*  </dd>*/}
          {/*</div>*/}
          <div className="bg-white px-4 py-5 sm:grid sm:grid-cols-5 sm:gap-4 sm:px-6">
            <dt className="text-sm font-medium text-gray-500">Gatekeeper</dt>
            <dd className="mt-1 text-sm text-gray-900 sm:col-span-4 sm:mt-0">
              <input
                id="gatekeeperNetwork"
                aria-describedby="comments-description"
                name="gatekeeperNetwork"
                type="checkbox"
                className="h-4 w-4 rounded border-gray-300 text-indigo-600 focus:ring-indigo-500"
                defaultChecked={!!paymentInfo.gatekeeperNetwork}
                onChange={(e) => setGatekeeperNetwork(e.target.checked)}
              />
            </dd>
          </div>
        </dl>
      </div>
    </div>
  )
}
