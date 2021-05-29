import { useEffect, useRef } from 'react';
import styled from 'styled-components';
interface Props {}

const Map = (props: Props) => {
  console.log(window.kakao);
  const mapRef = useRef(null);
  useEffect(() => {
    const options = {
      center: new window.kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
      level: 3, //지도의 레벨(확대, 축소 정도)
    };

    new window.kakao.maps.Map(mapRef.current, options); //지도 생성 및 객체 리턴
  }, []);
  return <StyleMap ref={mapRef}></StyleMap>;
};

export default Map;

const StyleMap = styled.div`
  width: 500px;
  height: 500px;
`;
