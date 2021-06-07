import { useCallback, useEffect, useRef, useState } from 'react';
import { useRecoilValueLoadable } from 'recoil';
import styled from 'styled-components';

import { accomodationList } from '@recoil/atoms/searchResult';

import { roomType } from '@components/SearchResult/types';

const { kakao }: any = window;

const Map = () => {
  const [map, setMap] = useState<any>(null);
  const mapContainer = useRef<HTMLElement>(null);
  const { state, contents } = useRecoilValueLoadable(accomodationList);
  const mapLatLng = { lat: 37.57992249446141, lng: 127.05564290690467 };

  const [, setMapBounds] = useState<mapBound>({
    ne_latitude: 0,
    ne_longitude: 0,
    sw_latitude: 0,
    sw_longitude: 0,
  });

  const rooms = contents;

  const getRoomPositions = useCallback(
    (rooms: any) => {
      if (state === 'loading') return [];
      return rooms.map((room: roomType) => {
        return {
          content: `<div class="custom-Overlay">
            <span>${room.accomodation_name}</span><span>${room.total_price}</span>
          </div>`,
          latLng: new kakao.maps.LatLng(room.latitude, room.longitude),
        };
      });
    },
    [state]
  );

  const roomPositions = getRoomPositions(rooms);

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
      const customOverlay: any = new kakao.maps.CustomOverlay({
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
