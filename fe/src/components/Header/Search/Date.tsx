import styled from 'styled-components';

import { useRecoilState, useRecoilValue } from 'recoil';
import { isCheckInOut, checkDate } from '@recoil/atoms/date';
import { modalStates } from '@recoil/atoms/modalState';

import Title from '@components/common/Title';
import SmallText from '@components/common/SmallText';
import React from 'react';

type dateType = {
  year: number;
  month: number;
  day?: number;
};

const Date = () => {
  const checkState = useRecoilValue(isCheckInOut);
  const selectCheckState = useRecoilValue(checkDate);
  const [isOpenModal, setIsOpenModal] = useRecoilState(modalStates);

  const { checkin, checkout } = checkState;
  const { checkinDate, checkoutDate } = selectCheckState;

  const handleClickDateSerach = (e: React.MouseEvent): void => {
    e.stopPropagation();
    setIsOpenModal({
      ...isOpenModal,
      calendar: true,
      price: false,
      guest: false,
    });
  };

  const renderCheckDate = (
    isChecked: boolean,
    { year, month, day }: dateType
  ): string => {
    return isChecked ? `${year}년 ${month}월 ${day}일` : '날짜 입력!!!!';
  };

  return (
    <DateWrap onClick={handleClickDateSerach}>
      <DateStyeld>
        <Title>체크인</Title>
        <SmallText>{renderCheckDate(checkin, checkinDate)}</SmallText>
      </DateStyeld>
      <DateStyeld>
        <Title>체크아웃</Title>
        <SmallText>{renderCheckDate(checkout, checkoutDate)}</SmallText>
      </DateStyeld>
    </DateWrap>
  );
};

export default Date;

const DateWrap = styled.div`
  display: flex;
  height: 100%;
  width: 40%;
  align-items: center;
`;

const DateStyeld = styled.div`
  margin-left: 20px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  height: 100%;
  width: 100%;
  &:hover {
    background-color: ${({ theme }) => theme.color.gray6};
  }
`;
