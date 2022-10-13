import { PaymentInfo } from "./types";

interface SolanaPayInfoProps {
  paymentInfo: PaymentInfo
}

export default function SolanaPayInfo({ paymentInfo }: SolanaPayInfoProps) {
  return (
    <div className="overflow-hidden bg-white shadow sm:rounded-lg">
      <div className="px-4 py-5 sm:px-6">
        <h3 className="text-lg font-medium leading-6 text-gray-900">Payment Information</h3>
        <p className="mt-1 max-w-2xl text-sm text-gray-500">Solana Pay Details:</p>
      </div>
      <div className="border-t border-gray-200">
        <dl>
          <div className="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-5 sm:gap-4 sm:px-6">
            <dt className="text-sm font-medium text-gray-500">From</dt>
            <dd className="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">{paymentInfo.fromWallet}</dd>
          </div>
          <div className="bg-white px-4 py-5 sm:grid sm:grid-cols-5 sm:gap-4 sm:px-6">
            <dt className="text-sm font-medium text-gray-500">To</dt>
            <dd className="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">{paymentInfo.toWallet}</dd>
          </div>
          <div className="bg-gray-50 px-4 py-5 sm:grid sm:grid-cols-5 sm:gap-4 sm:px-6">
            <dt className="text-sm font-medium text-gray-500">Amount</dt>
            <dd className="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">{(Number(paymentInfo.amount) / 1000000)}</dd>
          </div>
          {/*<div className="bg-white px-4 py-5 sm:grid sm:grid-cols-5 sm:gap-4 sm:px-6">*/}
          {/*  <dt className="text-sm font-medium text-gray-500">Mint</dt>*/}
          {/*  <dd className="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">{paymentInfo.mint}</dd>*/}
          {/*</div>*/}
          <div className="bg-white px-4 py-5 sm:grid sm:grid-cols-5 sm:gap-4 sm:px-6">
            <dt className="text-sm font-medium text-gray-500">Gatekeeper</dt>
            <dd className="mt-1 text-sm text-gray-900 sm:col-span-2 sm:mt-0">{paymentInfo.gatekeeperNetwork ? "Yes" : "No"}</dd>
          </div>
        </dl>
      </div>
    </div>
  )
}
