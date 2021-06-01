import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import AvailableRoom from './AvailableRoom';
import RoomMap from './RoomMap';
import API from '../../utils/API';

const ReservationMain = () => {
  const [roomData, setRoomData] = useState();

  useEffect(() => {
    const fetchData = API.get.room();
    fetchData.then((res) => setRoomData(res));
  }, []);

  return (
    <ReservationMainDiv>
      <AvailableRoom roomData={roomData} />
      <RoomMap roomData={roomData} />
    </ReservationMainDiv>
  );
};

const ReservationMainDiv = styled.div`
  position: relative;
  display: flex;
  width: 100%;
  height: fit-content;
  top: 0;
`;

export default ReservationMain;
