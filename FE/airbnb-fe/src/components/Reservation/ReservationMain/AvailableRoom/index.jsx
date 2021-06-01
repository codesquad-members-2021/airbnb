import React, { useContext } from 'react';
import styled from 'styled-components';
import AvailableRoomCard from './AvailableRoomCard';
import roomData from '../../../utils/mock/room-card.json';
import { ReservationContext } from '../..';

const AvailableRoom = () => {
  const { match } = useContext(ReservationContext);
  const checkInData = match.params['checkIn'].split('-').map(Number);
  const checkOutData = match.params['checkOut'].split('-').map(Number);
  const roomList = roomData.accommodationList;

  return (
    <AvailableRoomDiv>
      <ReservationConditionData>
        300개 이상의 숙소 · {checkInData[1]}월{checkInData[2]}일-
        {checkOutData[1]}월{checkOutData[2]}일 · ₩{match.params.minPrice}~₩
        {match.params.maxPrice} · 게스트
        {parseInt(match.params.adults) + parseInt(match.params.children)}명
      </ReservationConditionData>
      <ChosenRoomListSpan>지도에서 선택한 지역의 숙소</ChosenRoomListSpan>
      <RoomCardList>
        {roomList.map((room) => (
          <AvailableRoomCard key={room.id} room={room} />
        ))}
      </RoomCardList>
    </AvailableRoomDiv>
  );
};

const AvailableRoomDiv = styled.div`
  position: relative;
  top: 126px;
  width: 52%; //map=49.2%;
  min-width: 640px;
  max-width: 790px;
  //768px정도 줄어들었을때 width를 100%, 그리고 지도쪽 display:none;
  margin: 0 24px;

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
