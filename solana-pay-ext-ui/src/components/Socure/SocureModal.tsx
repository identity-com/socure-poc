
interface SocureFrameProps {
  publicKey: string;
}

export default function SocureModal({publicKey}: SocureFrameProps) {
  return (
    <div>
      <div className="socure-iframe-wrapper">
        <iframe src={`https://socure-demo.identity.com/#/verify/${publicKey}`}
                className="socure-iframe" title="Socure"/>
      </div>
    </div>
  )
}
