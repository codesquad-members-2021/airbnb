import { useEffect } from 'react'
import styled from 'styled-components'
declare global {
  interface Window {
    naver: any
  }
}
function Map() {
  useEffect(() => {
    let container = document.getElementById('map')
    let options = {
      center: new window.naver.maps.LatLng(37.3595704, 127.105399),
      level: 3,
    }

    var map = new window.naver.maps.Map(container, options)
  }, [])
  return (
    <Frame>
      <div id='map' style={{ width: '100%', height: '100vh' }} />
    </Frame>
  )
}

const Frame = styled.div`
  width: 50vw;
`

export default Map
