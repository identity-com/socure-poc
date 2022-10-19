import { Fragment, useEffect } from 'react'
import { Dialog, Transition } from '@headlessui/react'
import {GATEKEEPER_NETWORK, SOCURE_UI_BASE_URL} from "../../../../config/constants";
import {Connection, PublicKey} from "@solana/web3.js";
import {GatewayToken, onGatewayToken} from "@identity.com/solana-gateway-ts";

interface SocureFrameProps {
  verificationPublicKey: string | undefined;
  setVerificationPublicKey: (verificationPublicKey?: string) => void;
  onComplete: (token: GatewayToken) => void;
  connection: Connection;
}

export default function SocureModal({verificationPublicKey, setVerificationPublicKey, onComplete, connection}: SocureFrameProps) {
  useEffect(() => {
    if(verificationPublicKey) {
      onGatewayToken(connection, new PublicKey(verificationPublicKey), GATEKEEPER_NETWORK, (token) => {
        setVerificationPublicKey(undefined);
        onComplete(token);
      })
    }
  }, []);

  return (
    <Transition.Root show={!!verificationPublicKey} as={Fragment}>
      <Dialog as="div" className="relative z-10" onClose={() => setVerificationPublicKey(undefined)}>
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
              <Dialog.Panel className="relative transform rounded-lg bg-white px-4 pt-5 pb-4 text-center shadow-xl transition-all sm:my-8 sm:w-full sm:max-w-4xl sm:p-6">
                <div className="w-full h-full">
                  <iframe className="w-full h-[38rem]" src={`${SOCURE_UI_BASE_URL}${verificationPublicKey}`} title="Socure"/>
                </div>
              </Dialog.Panel>
            </Transition.Child>
          </div>
        </div>
      </Dialog>
    </Transition.Root>
  )
}
