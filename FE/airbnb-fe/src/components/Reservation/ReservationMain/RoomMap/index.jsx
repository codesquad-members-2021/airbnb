import React, { useEffect } from 'react';
import styled from 'styled-components';

/*global kakao*/
const RoomMap = ({ roomData }) => {
  // const place = roomData.accommodationList.map((v) => [
  //   v.latitude,
  //   v.longitude,
  // ]);
  const placeArray = roomData
    ? roomData.accommodationList.map((v) => [v.latitude, v.longitude])
    : [[0, 0]];

  console.log(placeArray);

  useEffect(() => {
    const container = document.getElementById('myMap');
    const options = {
      center: new kakao.maps.LatLng(37.49091340540493, 127.03337782299037),
      level: 2,
      mapTypeId: kakao.maps.MapTypeId.ROADMAP,
    };
    const map = new kakao.maps.Map(container, options);

    function displayMarker(place) {
      let marker = new kakao.maps.Marker({
        map: map,
        position: new kakao.maps.LatLng(place[0], place[1]),
      });
    }
    placeArray.map((loc) => displayMarker(loc));
  }, [placeArray]);

  return <MapContainer id="myMap"></MapContainer>;
};
// console.log('ROOMMAP', roomData);

const MapContainer = styled.div`
  width: 90%;
  height: 100vh;
  position: sticky;
  top: 0;
`;

export default RoomMap;
