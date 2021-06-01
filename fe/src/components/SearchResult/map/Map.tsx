import { useEffect, useRef } from 'react';
import styled from 'styled-components';

const Map = () => {
  const { kakao }: any = window;

  const options = {
    center: new kakao.maps.LatLng(33.450701, 126.570667),
    level: 4,
  };

  const mapContainer = useRef<HTMLElement>(null);

  useEffect(() => {
    new kakao.maps.Map(mapContainer.current, options);
  }, []);

  return <MapWrap id="map" ref={mapContainer}></MapWrap>;
};

export default Map;

const MapWrap = styled.section`
  width: 50%;
  height: 1024px;
  position: relative;
  z-index: 1;
`;
