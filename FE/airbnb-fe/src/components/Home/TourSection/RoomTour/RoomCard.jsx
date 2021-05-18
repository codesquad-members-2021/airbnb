import React from 'react';
import styled from 'styled-components';

const RoomCard = ({ title, imgUrl }) => {
  return (
    <RoomCardDiv>
      <RoomCardImg src={`${imgUrl}`} alt="투어이미지" />
      <RoomCardSubTitle>{title}</RoomCardSubTitle>
    </RoomCardDiv>
  );
};

const RoomCardDiv = styled.div`
  display: flex;
  flex-direction: column;
  gap: 1rem;
`;

const RoomCardImg = styled.img`
  width: 19.25rem;
  border-radius: 0.6rem;
`;

const RoomCardSubTitle = styled.div`
  color: ${({ theme }) => theme.colors.gray6};
  font-size: 1.25rem;
`;

export default RoomCard;
