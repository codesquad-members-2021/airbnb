import React from 'react'
import styled from 'styled-components';
import { DivisionContent, DivisionTitle } from '@Components/commons/base';
import { getMonthAndDay } from '@/utils/calendarUtil';

type DateKindType = {
  checkInTime?: number;
  checkOutTime?: number;
  kind: string;
}

const DateKind = ({ checkInTime, checkOutTime, kind }: DateKindType) => {
  return (
    <DateKindWrapper>
      <DivisionTitle>{kind}</DivisionTitle>
      <DivisionContent>
        {kind === '체크인' && (checkInTime ? getMonthAndDay(checkInTime) : '날짜 입력')}
        {kind === '체크아웃' && (checkOutTime ? getMonthAndDay(checkOutTime) : '날짜 입력')}
      </DivisionContent>
    </DateKindWrapper>
  )
}

const DateKindWrapper = styled.span`
  width: 43%;
  place-self: center;
  &:hover{
    cursor: pointer;
  }
`;

export default DateKind;
