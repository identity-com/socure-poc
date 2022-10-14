import { createQR } from '@solana/pay'
import { useEffect, useRef } from "react";
interface SolanaPayProps {
  url: string;
}

export default function SolanaPayQR({ url }: SolanaPayProps) {
  // ref to a div where we'll show the QR code
  const qrRef = useRef<HTMLDivElement>(null)

  useEffect(() => {
    const qr = createQR(`solana:${url}`, 512, 'transparent')
    if (qrRef.current) {
      qrRef.current.innerHTML = ''
      qr.append(qrRef.current)
    }
  }, [url])

  return (
    <>
      <div ref={qrRef} />
    </>
  )
}
