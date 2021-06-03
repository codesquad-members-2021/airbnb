import { useState, useEffect, useRef } from 'react';
import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { roomsState } from '../../recoilStore/reserveRoomAtom';
import MapLabel from './MapLabel';
const { kakao } = window;
interface Props {
  className?: string;
}

const Map = ({ className }: Props) => {
  const [map, setMap] = useState(null);
  const roomsData = useRecoilValue(roomsState);
  const mapRef = useRef(null);
  useEffect(() => {
    const options = {
      center: new kakao.maps.LatLng(37.496181, 127.030825), //지도의 중심좌표.
      level: 3, //지도의 레벨(확대, 축소 정도)
    };

    const map = new kakao.maps.Map(mapRef.current, options); //지도 생성 및 객체 리턴
    setMap(map);

    //컨트롤 러
    const zoomControl = new kakao.maps.ZoomControl();
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
  }, []);
  useEffect(() => {
    roomsData?.forEach((roomData) => {
      const content = MapLabel({ price: roomData.chargePerNight });
      const position = new kakao.maps.LatLng(roomData.address.latitude, roomData.address.longitude);
      const customOverlay = new kakao.maps.CustomOverlay({
        position: position,
        content: content,
      });

      // // 커스텀 오버레이를 지도에 표시합니다
      customOverlay.setMap(map);
    });
  }, [roomsData]);

  return <StyleMap className={className} ref={mapRef}></StyleMap>;
};

export default Map;

const StyleMap = styled.div`
  .label {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 89px;
    height: 28px;
    background-color: ${({ theme }) => theme.colors.white};
    box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25);
    border-radius: 8px;
  }
`;
