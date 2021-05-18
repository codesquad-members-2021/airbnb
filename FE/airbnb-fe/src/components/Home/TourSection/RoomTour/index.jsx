import React from 'react';
import styled from 'styled-components';
import { roomMock } from '../../../utils/mock/roomCardMockData';
import RoomCard from './RoomCard';

const RoomTour = () => {
  return (
    <RoomTourDiv>
      <RoomTourTitle>어디서나 여행은 살아보는거야!</RoomTourTitle>
      <RoomTourCardList>
        {roomMock.map((v, idx) => (
          <RoomCard title={v.title} imgUrl={v.imgUrl} key={idx} />
        ))}
      </RoomTourCardList>
    </RoomTourDiv>
  );
};

const RoomTourDiv = styled.div`
  width: 88.88%;
  height: fit-content;
  margin: 5rem auto 5rem auto;
`;

const RoomTourTitle = styled.div`
  color: ${({ theme }) => theme.colors.gray1};
  font-size: 2rem;
  margin: 0 0 2rem 0;
`;

const RoomTourCardList = styled.div`
  display: flex;
  gap: 1rem;
  justify-content: space-between;
`;

export default RoomTour;
