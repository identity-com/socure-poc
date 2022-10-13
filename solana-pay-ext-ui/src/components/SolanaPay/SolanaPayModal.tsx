import { Fragment, useEffect } from 'react'
import { Dialog, Transition } from '@headlessui/react'
import { PaymentSession, PaymentStatus } from "./types";
import SolanaPayQR from "./SolanaPayQR";
import SolanaPaySteps from "./SolanaPaySteps";
import { useInterval } from "../../utils/utils";
import { API_URL } from "./constants";
import Spinner from "../Various/Spinner";
import SolanaPayInfo from "./SolanaPayInfo";
import { CheckIcon, XCircleIcon } from "@heroicons/react/24/solid";



interface SolanaPayModalProps {
  paymentSession?: PaymentSession;
  setPaymentSession: (paymentId?: PaymentSession) => void;
  setVerificationPublicKey: (verificationPublicKey?: string) => void;
}

// TODO: Split up this monster of a class
export default function SolanaPayModal({paymentSession, setPaymentSession, setVerificationPublicKey}: SolanaPayModalProps) {

  // Poll Status
  useInterval(() => {
    if (paymentSession?.id) {
      fetch(`${API_URL}/${paymentSession.id}`)
        .then(response => response.json())
        // Map string to publicKey
        .then(data => setPaymentSession(data));
    }
  }, 1000 * 5);

  useEffect(() => {
    // close modal after 3s
    if (paymentSession?.status === PaymentStatus.TX_CONFIRMED) {
      setTimeout(() => {
        setPaymentSession(undefined)
      }, 3000);
    }
  }, [paymentSession])

  const onVerificationClick = () => {
    setVerificationPublicKey(paymentSession?.paymentInfo.fromWallet)
    setPaymentSession(undefined);
  }

  return (
    <>
      <Transition.Root show={!!paymentSession} as={Fragment}>
        <Dialog as="div" className="relative z-10" onClose={() => setPaymentSession(undefined)}>
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
                    <div className="mt-3 text-center sm:mt-5">
                      <Dialog.Title as="h4" className="text-lg font-medium leading-6 text-gray-900">
                        Solana Pay (with KYC)
                      </Dialog.Title>
                    </div>

                    {/* Step 1: QR Code */}
                    <div className="mx-auto flex items-center justify-center p-1">
                      {paymentSession?.status === PaymentStatus.QR && <SolanaPayQR url={paymentSession.url} />}
                    </div>

                    {/* Step 2/3/4: Scanning */}
                    { paymentSession && paymentSession.status !== PaymentStatus.QR && paymentSession.status !== PaymentStatus.ERROR && <>
                        <div className="mx-auto flex items-center justify-center p-5">
                          <SolanaPayInfo paymentInfo={paymentSession.paymentInfo} />
                      </div>
                        <div className="mx-auto flex items-center justify-center p-5">
                          {paymentSession.status !== PaymentStatus.TX_CONFIRMED && <Spinner />}
                          {paymentSession.status === PaymentStatus.TX_CONFIRMED && <div className="mx-auto flex h-12 w-12 items-center justify-center rounded-full bg-green-100">
                              <CheckIcon className="h-6 w-6 text-green-600" aria-hidden="true" />
                            </div>}
                        </div>
                    </>}

                    {/* ERROR! */}
                    { paymentSession?.status === PaymentStatus.ERROR &&
                      <>
                        <div className="mx-auto flex items-center justify-center p-5">
                            <h1>An error occured!</h1>
                        </div>
                          <div className="mx-auto flex items-center justify-center p-5">

                          <p className="text-lg text-red-500">
                              {paymentSession.errorMessage}
                            </p>
                        </div>

                        <div className="mx-auto flex items-center justify-center p-5">
                            <div className="mx-auto flex h-12 w-12 items-center justify-center rounded-full bg-red-100">
                                <XCircleIcon className="h-6 w-6 text-red-600" aria-hidden="true" />
                            </div>
                        </div>
                        {/*  Start Verification */}
                        <div className="mt-5 sm:mt-6">
                            <button
                                type="button"
                                className="inline-flex w-full justify-center rounded-md border border-transparent bg-indigo-600 px-4 py-2 text-base font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 sm:text-sm"
                                onClick={onVerificationClick}
                            >
                                Verify me now!
                            </button>
                        </div>

                        </>}


                    <div className="mx-auto flex items-center justify-center w-full p-1">
                      {paymentSession?.status && <SolanaPaySteps currentStatus={paymentSession?.status} />}
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
