import React from 'react';
import styled from 'styled-components';
import { roomMock } from '../../../utils/roomCardMockData';
import RoomCard from './RoomCard';

const RoomTour = () => {
  return (
    <RoomTourDiv>
      <RoomTourTitle>어디서나 여행은 살아보는거야!</RoomTourTitle>
      <RoomTourCardList>
        {roomMock.map((v) => (
          <RoomCard title={v.title} imgUrl={v.imgUrl} />
        ))}
      </RoomTourCardList>
    </RoomTourDiv>
  );
};

const RoomTourDiv = styled.div`
  width: 100%;
  height: fit-content;
`;

const RoomTourTitle = styled.div`
  color: ${({ theme }) => theme.colors.gray6};
  font-size: 2rem;
  margin: 0 0 2rem 0;
`;

const RoomTourCardList = styled.div`
  display: flex;
  gap: 1rem;
`;

export default RoomTour;
