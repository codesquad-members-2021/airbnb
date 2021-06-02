import React, { useContext } from 'react';
import styled from 'styled-components';
import RatingStar from '../../../Atoms/icons/RatingStar';
import Heart from '../../../Atoms/icons/Heart';

import { ReservationContext } from '../..';

const AvailableRoomCard = ({ room, calcDiff, setIsPayModalClicked }) => {
  const { match } = useContext(ReservationContext);

  const handlePayModalClicked = () => {
    setIsPayModalClicked(true);
  };

  return (
    <RoomCardDiv onClick={() => handlePayModalClicked()}>
      <div>
        <RoomImg src={`${room.image}`} />
      </div>
      <RoomContent>
        <RoomContentUpper>
          <div>
            <RoomLocation>{room.title}</RoomLocation>
            <RoomHashTag>{room.title}</RoomHashTag>
            <RoomOption>{room.options}</RoomOption>
          </div>
          <RoomLike>
            <Heart isLike={room.like} />
          </RoomLike>
        </RoomContentUpper>
        <RoomContentBottom>
          <RoomReview>
            <RatingStar />
            <RoomRate>{room.reviewRating} </RoomRate>
            후기({room.reviewCount}개)
          </RoomReview>
          <RoomPrice>
            <div>
              <PricePerDay>₩{room.charge}</PricePerDay> / 박
            </div>
            <TotalPrice>총액 ₩{calcDiff() * room.charge}</TotalPrice>
          </RoomPrice>
        </RoomContentBottom>
      </RoomContent>
    </RoomCardDiv>
  );
};

const RoomCardDiv = styled.div`
  display: flex;
  /* width: 684px; */
  width: 100%;
  height: 248px;
  padding: 24px 0;
  border: 1px solid green;
  border-bottom: 1px solid ${({ theme }) => theme.colors.gray5};
  cursor: pointer;
`;
const RoomImg = styled.img`
  width: 320px;
  height: 200px;
  border-radius: 10px;
`;
const RoomContent = styled.div`
  margin-left: 24px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  border: 1px solid pink;
  width: 330px;
  width: 100%;
`;
const RoomContentUpper = styled.div`
  display: flex;
  justify-content: space-between;
`;
const RoomLike = styled.div``;

const RoomLocation = styled.div`
  width: 268px;
  text-overflow: ellipsis;
  overflow: hidden;
  white-space: nowrap;
  margin-bottom: 0.5rem;
  color: ${({ theme }) => theme.colors.gray3};
  font-size: ${({ theme }) => theme.fontSizes.TS};
`;

const RoomHashTag = styled.div`
  width: 268px;
  text-overflow: ellipsis;
  white-space: nowrap;
  margin-bottom: 0.5rem;
  overflow: hidden;
  ${({ theme }) => theme.colors.gray1};
  font-size: ${({ theme }) => theme.fontSizes.XXS};
`;

const RoomOption = styled.div`
  width: 268px;
  margin-bottom: 0.5rem;
  color: ${({ theme }) => theme.colors.gray3};
  font-size: ${({ theme }) => theme.fontSizes.TS};
`;

const RoomContentBottom = styled.div`
  display: flex;
  justify-content: space-between;
`;

const RoomReview = styled.div`
  display: flex;
  align-items: flex-end;
  color: ${({ theme }) => theme.colors.gray3};
  font-size: ${({ theme }) => theme.fontSizes.TS};
`;

const RoomRate = styled.div`
  margin: 0 5px;
  color: ${({ theme }) => theme.colors.gray1};
`;
const RoomPrice = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-end;
`;
const PricePerDay = styled.span`
  font-weight: bold;
`;
const TotalPrice = styled.div`
  color: ${({ theme }) => theme.colors.gray3};
  text-decoration: underline;
  font-size: ${({ theme }) => theme.fontSizes.TS};
`;

export default AvailableRoomCard;
