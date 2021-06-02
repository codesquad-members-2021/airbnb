import { userLocation } from '@recoil/atoms/searchResult';
import { useEffect, useRef } from 'react';
import { useRecoilState } from 'recoil';
import styled from 'styled-components';

const Map = () => {
  const { kakao }: any = window;
  const mapContainer = useRef<HTMLElement>(null);
  const [COORDS, setCOORDS] = useRecoilState(userLocation);
  const { latitude, longitude } = COORDS;

  const options = {
    center: new kakao.maps.LatLng(latitude, longitude),
    level: 4,
  };

  navigator.geolocation.getCurrentPosition((position) => {
    const COORD = {
      latitude: position.coords.latitude,
      longitude: position.coords.longitude,
    };
    setCOORDS(COORD);
  });

  useEffect(() => {
    new kakao.maps.Map(mapContainer.current, options);
  }, [latitude, longitude]);

  return <MapWrap id="map" ref={mapContainer}></MapWrap>;
};

export default Map;

const MapWrap = styled.section`
  width: 50%;
  height: 1024px;
  position: relative;
  z-index: 1;
`;
