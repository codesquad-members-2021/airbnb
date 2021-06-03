import { useEffect, useRef, useState } from 'react';
import {
  useRecoilState,
  useRecoilValueLoadable,
  useSetRecoilState,
} from 'recoil';
import styled from 'styled-components';

import {
  userLocation,
  mapSizeCoords,
  accomodationList,
} from '@recoil/atoms/searchResult';

import { roomType } from '@components/SearchResult/types';

import Marker from './Marker';

const { kakao }: any = window;

const Map = () => {
  const setMapSize = useSetRecoilState(mapSizeCoords);
  const mapContainer = useRef<HTMLElement>(null);
  const { state, contents } = useRecoilValueLoadable(accomodationList);
  const [COORDS, setCOORDS] = useRecoilState(userLocation);
  const { latitude, longitude } = COORDS;
  const [mapBounds, setMapBounds] = useState<mapBound>({
    ne_latitude: 0,
    ne_longitude: 0,
    sw_latitude: 0,
    sw_longitude: 0,
  });
  const rooms = contents;

  const getRoomPositions = (rooms: any) => {
    if (rooms === null) return [];
    return rooms.map((room: roomType) => {
      return {
        content: (
          <div className="custom-Overlay">
            `${room.accomodation_name}: ${room.total_price}`
          </div>
        ),
        latLng: new kakao.maps.LatLng(latitude, longitude),
      };
    });
  };

  const roomPositions = getRoomPositions(rooms);

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
    const map = new kakao.maps.Map(mapContainer.current, options);
    kakao.maps.event.addListener(map, 'bounds_changed', () => {
      const bounds = map.getBounds();
      const swLatLng = bounds.getSouthWest();
      const neLatLng = bounds.getNorthEast();

      setMapBounds({
        ne_latitude: neLatLng.La,
        ne_longitude: neLatLng.Ma,
        sw_latitude: swLatLng.La,
        sw_longitude: swLatLng.Ma,
      });
    });

    // 숙소를 지도 위에 마커로 표시한다.
    if (roomPositions.length > 0) {
      for (let i = 0; i < roomPositions.length; i++) {
        const customOverlay = new kakao.maps.Marker({
          position: roomPositions[i].latLng,
          content: roomPositions[i].content,
        });
        customOverlay.setMap(map);
      }
    }
  }, [latitude, longitude]);

  const handleMouseUpMap = (): void => setMapSize(mapBounds);

  return (
    <MapWrap id="map" ref={mapContainer} onMouseUp={handleMouseUpMap}>
      <Marker />
    </MapWrap>
  );
};

export default Map;

const MapWrap = styled.section`
  width: 50%;
  height: 1024px;
  position: relative;
  z-index: 1;

  .custom-Overlay {
    width: 40px;
    height: 20px;
  }
`;

interface mapBound {
  ne_latitude: number;
  ne_longitude: number;
  sw_latitude: number;
  sw_longitude: number;
}
