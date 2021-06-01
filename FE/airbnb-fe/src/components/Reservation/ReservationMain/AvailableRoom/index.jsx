import React, { useContext } from 'react';
import styled from 'styled-components';
import AvailableRoomCard from './AvailableRoomCard';
import roomData from '../../../utils/mock/room-card.json';
import { ReservationContext } from '../..';

const AvailableRoom = () => {
  const { match } = useContext(ReservationContext);
  const roomList = roomData.accommodationList;

  return (
    <AvailableRoomDiv>
      <ReservationConditionData>
        300개 이상의 숙소 · 5월12일-5월18일 · $100,100~$1,100,000 · 게스트3명
      </ReservationConditionData>
      <ChosenRoomListSpan>지도에서 선택한 지역의 숙소</ChosenRoomListSpan>
      <RoomCardList>
        {roomList.map((room) => (
          <AvailableRoomCard room={room} />
        ))}
      </RoomCardList>
    </AvailableRoomDiv>
  );
};

const AvailableRoomDiv = styled.div`
  position: relative;
  top: 126px;
  width: 50.8%; //map=49.2%;
  min-width: 640px;
  max-width: 790px;
  //768px정도 줄어들었을때 width를 100%, 그리고 지도쪽 display:none;
  border: 1px solid red;
`;

const ReservationConditionData = styled.div`
  color: ${({ theme }) => theme.colors.gray1};
`;

const ChosenRoomListSpan = styled.div`
  margin-top: 0.5rem;
  margin-bottom: 2rem;
  color: ${({ theme }) => theme.colors.gray1};
  font-size: ${({ theme }) => theme.fontSizes.L};
  font-weight: bold;
`;

const RoomCardList = styled.ul`
  display: flex;
  flex-direction: column;
`;

export default AvailableRoom;
