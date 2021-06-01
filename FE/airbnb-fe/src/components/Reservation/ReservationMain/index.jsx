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
  padding: 0 24px;
  border: 2px solid green;
  display: flex;
  position: relative;
  top: 0;
  height: fit-content;
`;

export default ReservationMain;
