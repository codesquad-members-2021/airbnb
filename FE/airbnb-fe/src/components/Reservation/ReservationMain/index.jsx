import React from 'react';
import styled from 'styled-components';
import AvailableRoom from './AvailableRoom';
import RoomMap from './RoomMap';

const ReservationMain = () => {
  return (
    <ReservationMainDiv>
      <AvailableRoom />
      <RoomMap />
    </ReservationMainDiv>
  );
};

const ReservationMainDiv = styled.div`
  position: relative;
  display: flex;
  width: 100%;
  height: fit-content;
  padding: 0 24px;
  top: 0;
`;

export default ReservationMain;
