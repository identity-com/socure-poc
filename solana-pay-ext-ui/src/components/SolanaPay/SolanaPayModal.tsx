import { Fragment, useEffect, useState } from 'react'
import { Dialog, Transition } from '@headlessui/react'
import { PAYMENT_URL } from "./constants";
import { PaymentInfo, PaymentSession, PaymentStatus } from "./types";
import SolanaPayQR from "./SolanaPayQR";
import SolanaPaySteps from "./SolanaPaySteps";
import { useInterval } from "../../utils/utils";
import { PublicKey } from "@solana/web3.js";

// const API_URL = PAYMENT_URL;
// TODO: for local testing
const API_URL = 'https://67f2-2600-4040-9734-e200-f047-6703-5eab-3d68.ngrok.io' + PAYMENT_URL;

interface SolanaPayModalProps {
  open: boolean;
  setOpen: (open: boolean) => void;
  paymentInfo: PaymentInfo;
}

// TODO: Split up this monster of a class
export default function SolanaPayModal({open, setOpen, paymentInfo}: SolanaPayModalProps) {
  const [paymentSession, setPaymentSession] = useState<PaymentSession | null>(null)

  useEffect(() => {
    if (!open) {
      return
    }

    // fetch data
    fetch(API_URL, {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(paymentInfo),
    })
      .then(response => response.json())
      .then(data => setPaymentSession(data));

  }, [open]);

    // Poll Status
    useInterval(() => {
      if (paymentSession?.id) {
        fetch(`${API_URL}/${paymentSession.id}`)
          .then(response => response.json())
          // Map string to publicKey
          .then(data => setPaymentSession(Object.assign({}, data, {account: data.account ? new PublicKey(data.account) : undefined})));
      }
    }, 1000 * 5);

  return (
    <>
      <Transition.Root show={open} as={Fragment}>
        <Dialog as="div" className="relative z-10" onClose={setOpen}>
          <Transition.Child
            as={Fragment}
            enter="ease-out duration-300"
            enterFrom="opacity-0"
            enterTo="opacity-100"
            leave="ease-in duration-200"
            leaveFrom="opacity-100"
            leaveTo="opacity-0"
          >
            <div className="fixed inset-0 bg-gray-500 bg-opacity-75 transition-opacity" />
          </Transition.Child>

          <div className="fixed inset-0 z-10 overflow-y-auto">
            <div className="flex min-h-full items-end justify-center p-4 text-center sm:items-center sm:p-0">
              <Transition.Child
                as={Fragment}
                enter="ease-out duration-300"
                enterFrom="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
                enterTo="opacity-100 translate-y-0 sm:scale-100"
                leave="ease-in duration-200"
                leaveFrom="opacity-100 translate-y-0 sm:scale-100"
                leaveTo="opacity-0 translate-y-4 sm:translate-y-0 sm:scale-95"
              >
                <Dialog.Panel className="relative transform overflow-hidden rounded-lg bg-white px-4 pt-5 pb-4 text-left shadow-xl transition-all sm:my-8 sm:w-full sm:max-w-2xl sm:p-6">
                  <div>
                    {/*<Dialog.Title as="h4" className="text-lg font-medium leading-6 text-gray-900">*/}
                    {/*  Step*/}
                    {/*</Dialog.Title>*/}
                    {/*<div className="mx-auto flex items-center justify-center w-full">*/}
                    {/*  {paymentSession?.status && <p>{paymentSession.status}</p>}*/}
                    {/*</div>*/}
                    {paymentSession?.status && <SolanaPaySteps currentStatus={paymentSession?.status} />}

                    <div className="mx-auto flex items-center justify-center">
                      {paymentSession?.url && paymentSession.status === PaymentStatus.QR && <SolanaPayQR url={paymentSession?.url} />}
                    </div>
                    <div className="mx-auto flex items-center justify-center">
                    { paymentSession?.account &&
                      <p className="text-sm text-gray-500">Account: {paymentSession.account.toBase58()}</p>}
                    </div>
                    <div className="mx-auto flex items-center justify-center">
                      { paymentSession?.status === PaymentStatus.ERROR && <div>
                          <h1>An error occured!</h1>
                          <p className="text-lg text-red-500">
                            {paymentSession.errorMessage}
                          </p></div>}
                    </div>

                    {/*  <div className="mx-auto flex h-12 w-12 items-center justify-center rounded-full bg-green-100">*/}
                  {/*    <CheckIcon className="h-6 w-6 text-green-600" aria-hidden="true" />*/}
                  {/*  </div>*/}
                  {/*  <div className="mt-3 text-center sm:mt-5">*/}
                  {/*    <Dialog.Title as="h3" className="text-lg font-medium leading-6 text-gray-900">*/}
                  {/*      Payment successful*/}
                  {/*    </Dialog.Title>*/}
                  {/*    <div className="mt-2">*/}
                  {/*      <p className="text-sm text-gray-500">adsf</p>*/}
                  {/*    </div>*/}
                  {/*  </div>*/}
                  {/*</div>*/}
                  {/*<div className="mt-5 sm:mt-6">*/}
                  {/*  <button*/}
                  {/*    type="button"*/}
                  {/*    className="inline-flex w-full justify-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 text-base font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 sm:text-sm"*/}
                  {/*    onClick={() => setOpen(false)}*/}
                  {/*  >*/}
                  {/*    Go back to dashboard*/}
                  {/*  </button>*/}
                  </div>
                </Dialog.Panel>
              </Transition.Child>
            </div>
          </div>
        </Dialog>
      </Transition.Root>
    </>
  )
}
