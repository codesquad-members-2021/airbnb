import { useEffect, useRef, useState } from 'react';
import { useRecoilState, useRecoilValueLoadable } from 'recoil';
import styled from 'styled-components';

import { userLocation, accomodationList } from '@recoil/atoms/searchResult';

import { roomType } from '@components/SearchResult/types';

const { kakao }: any = window;

const Map = () => {
  const [map, setMap] = useState<any>(null);
  const mapContainer = useRef<HTMLElement>(null);
  const { state, contents } = useRecoilValueLoadable(accomodationList);
  const [COORDS, setCOORDS] = useRecoilState(userLocation);
  const { latitude, longitude } = COORDS;
  const [mapLatLng, setMapLatLng] = useState({
    lat: 37.57992249446141,
    lng: 127.05564290690467,
  });
  const [mapBounds, setMapBounds] = useState<mapBound>({
    ne_latitude: 0,
    ne_longitude: 0,
    sw_latitude: 0,
    sw_longitude: 0,
  });

  const rooms = contents;

  const getRoomPositions = (rooms: any) => {
    if (state === 'loading') return [];
    return rooms.map((room: roomType) => {
      return {
        content: `<div class="custom-Overlay">
            <span>${room.accomodation_name}</span><span>${room.total_price}</span>
          </div>`,
        latLng: new kakao.maps.LatLng(room.latitude, room.longitude),
      };
    });
  };

  const roomPositions = getRoomPositions(rooms);

  // 현재는 쓰지 않는다.
  // 사용자 위치 기반으로 지도를 불러오고 싶을 때 사용한다.
  navigator.geolocation.getCurrentPosition((position) => {
    const COORD = {
      latitude: position.coords.latitude,
      longitude: position.coords.longitude,
    };
    setCOORDS(COORD);
  });

  useEffect(() => {
    const { lat, lng } = mapLatLng;
    const options = {
      center: new kakao.maps.LatLng(lat, lng),
      level: 5,
    };

    const createMap = new kakao.maps.Map(mapContainer.current, options);

    const mapTypeControl = new kakao.maps.MapTypeControl();
    createMap.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    const zoomControl = new kakao.maps.ZoomControl();
    createMap.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

    setMap(createMap);
  }, []);

  const handleMouseUp = () => {
    const bounds = map.getBounds();
    const swLatLng = bounds.getSouthWest();
    const neLatLng = bounds.getNorthEast();

    setMapBounds({
      ne_latitude: neLatLng.Ma,
      ne_longitude: neLatLng.La,
      sw_latitude: swLatLng.Ma,
      sw_longitude: swLatLng.La,
    });

    for (let i = 0; i < roomPositions.length; i++) {
      const customOverlay = new kakao.maps.CustomOverlay({
        position: roomPositions[i].latLng,
        content: roomPositions[i].content,
      });
      customOverlay.setMap(map);
    }
  };

  return (
    <MapWrap id="map" ref={mapContainer} onMouseUp={handleMouseUp}></MapWrap>
  );
};

export default Map;

const MapWrap = styled.section`
  width: 50%;
  height: 1024px;
  position: relative;
  z-index: 1;

  .custom-Overlay {
    display: flex;
    flex-direction: column;
    width: auto;
    height: auto;
    font-size: 12px;
    background: #fff;
  }
`;

interface mapBound {
  ne_latitude: number;
  ne_longitude: number;
  sw_latitude: number;
  sw_longitude: number;
}
