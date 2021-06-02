import { useEffect } from 'react'
import styled from 'styled-components'
declare global {
  interface Window {
    naver: any
  }
}

interface IMapData {
  data: any
  isRouter: boolean
}
function Map({ data, isRouter }: IMapData) {
  console.log(data)

  useEffect(() => {
    //지도생성
    let container = document.getElementById('map')
    let options = {
      center: new window.naver.maps.LatLng(
        data[0].coordinate.latitude,
        data[0].coordinate.longitude
      ),
      zoom: 15,
    }
    var map = new window.naver.maps.Map(container, options)

    //마커표시
    for (let i = 1; i < data.length; i++) {
      let latitude = data[i].coordinate.latitude
      let longitude = data[i].coordinate.longitude
      let position = new window.naver.maps.LatLng(latitude, longitude)
      let marker = new window.naver.maps.Marker({ position, map })
    }
  })
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
