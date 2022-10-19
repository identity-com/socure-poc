export type IFrameContainerProps = {
  hide: () => void
  visible: boolean,
  source: string
}

export default function IFrameContainer({visible, source, hide}: IFrameContainerProps) {
  if(!visible) return (<></>);

  return (
      <div className="socure-iframe-background" onClick={hide}>
        <div className="socure-iframe-wrapper">
          <iframe src={source} className="socure-iframe" title="Socure"/>
        </div>
      </div>
  )
}