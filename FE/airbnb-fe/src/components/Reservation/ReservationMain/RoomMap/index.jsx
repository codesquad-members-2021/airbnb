import React, { useEffect } from 'react';
import styled from 'styled-components';

/*global kakao*/
const RoomMap = () => {
  useEffect(() => {
    const container = document.getElementById('myMap');
    const options = {
      center: new kakao.maps.LatLng(37.49091340540493, 127.03337782299037),
      level: 6,
      mapTypeId: kakao.maps.MapTypeId.ROADMAP,
    };
    const map = new kakao.maps.Map(container, options);
  }, []);

  return <MapContainer id="myMap"></MapContainer>;
};

const MapContainer = styled.div`
  width: 90%;
  height: 100vh;
  position: sticky;
  top: 0;
`;

export default RoomMap;
