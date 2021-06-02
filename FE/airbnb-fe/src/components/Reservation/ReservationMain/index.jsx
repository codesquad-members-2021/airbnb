import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import AvailableRoom from './AvailableRoom';
import RoomMap from './RoomMap';
import API from '../../utils/API';
import RoomPayModal from './RoomPayModal';

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
      <PayModalWrapper>
        <RoomPayModal />
      </PayModalWrapper>
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

const PayModalWrapper = styled.div`
  position: fixed;
  overflow: hidden;
  width: 100%;
  height: 100%;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background: rgba(0, 0, 0, 0.5);
  z-index: 999;
`;

export default ReservationMain;
