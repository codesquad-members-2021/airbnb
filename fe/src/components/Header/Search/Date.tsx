import styled from 'styled-components';

import { useRecoilValue, useSetRecoilState } from 'recoil';
import { dateSearchClick } from '@recoil/atoms/calendarState';
import { isCheckInOut, checkDate } from '@recoil/atoms/date';

import Title from '@components/common/Title';
import SmallText from '@components/common/SmallText';
import React from 'react';

type dateType = {
  year: number;
  month: number;
  day?: number;
};

const Date = () => {
  const setIsOpenCalendar = useSetRecoilState(dateSearchClick);
  const checkState = useRecoilValue(isCheckInOut);
  const selectCheckState = useRecoilValue(checkDate);

  const { checkin, checkout } = checkState;
  const { checkinDate, checkoutDate } = selectCheckState;

  const handleClickDateSerach = (e: React.MouseEvent): void => {
    e.stopPropagation();
    setIsOpenCalendar(true);
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
  width: 361px;
  align-items: center;
`;

const DateStyeld = styled.div`
  margin-left: 20px;
  display: flex;
  flex-direction: column;
  justify-content: center;
  height: 100%;
  width: 170px;
  &:hover {
    background-color: ${({ theme }) => theme.color.gray6};
  }
`;
