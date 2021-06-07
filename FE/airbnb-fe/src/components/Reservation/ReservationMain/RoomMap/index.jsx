import React, { useEffect, useMemo } from 'react';
import styled from 'styled-components';
import getRegex from '../../../utils/getRegex';
/*global kakao*/
const RoomMap = ({ roomData }) => {
  const placeArray = useMemo(
    () =>
      roomData
        ? roomData.accommodationList.map((room) => [
            room.latitude,
            room.longitude,
            room.charge,
          ])
        : [[0, 0, 0]],
    [roomData]
  );

  useEffect(() => {
    const container = document.getElementById('myMap');
    const options = {
      center: new kakao.maps.LatLng(37.49091340540493, 127.03337782299037),
      level: 6,
      mapTypeId: kakao.maps.MapTypeId.ROADMAP,
    };
    const map = new kakao.maps.Map(container, options);

    const displayMarker = (place) => {
      const content = `<div class=marker>₩ ${getRegex(place[2])}</div>`;
      new kakao.maps.CustomOverlay({
        map: map,
        position: new kakao.maps.LatLng(place[0], place[1]),
        content: content,
        yAnchor: 1,
      });
    };
    placeArray.map((loc) => displayMarker(loc));
  }, [placeArray]);

  return <MapContainer id="myMap"></MapContainer>;
};

const MapContainer = styled.div`
  width: 90%;
  height: 100vh;
  position: sticky;
  top: 0;
  .marker {
    padding: 4px 12px;
    background-color: ${({ theme }) => theme.colors.white};
    color: ${({ theme }) => theme.colors.gray2};
    box-shadow: 0px 0px 4px rgba(204, 204, 204, 0.5),
      0px 2px 4px rgba(0, 0, 0, 0.25);
    backdrop-filter: blur(4px);
    font-weight: 600;
    font-size: ${({ theme }) => theme.fontSizes.XS};
    border-radius: 0.5rem;
    :hover {
      color: ${({ theme }) => theme.colors.magenta};
      background-color: ${({ theme }) => theme.colors.gray6};
    }
  }
`;

export default RoomMap;
