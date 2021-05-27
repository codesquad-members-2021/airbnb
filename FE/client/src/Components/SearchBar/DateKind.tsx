import React from 'react'
import styled from 'styled-components';
import { getMonthAndDay } from '../../utils/calendarUtil';
import { DivisionContent, DivisionTitle } from '../commons/base';

type CheckDateType = {
  checkInTime?: number;
  checkOutTime?: number;
  kind : string;
}

const CheckDate = ({ checkInTime, checkOutTime, kind } : CheckDateType) => {
  return (
    <CheckDateWrapper>
      <DivisionTitle>{kind}</DivisionTitle>
      <DivisionContent>
        {kind === '체크인' && (checkInTime ? getMonthAndDay(checkInTime) : '날짜 입력')}
        {kind === '체크아웃' && (checkOutTime ? getMonthAndDay(checkOutTime) : '날짜 입력')}
      </DivisionContent>
    </CheckDateWrapper>
  )
}

const CheckDateWrapper = styled.span`
  width: 43%;
  place-self: center;
  &:hover{
    cursor: pointer;
  }
`;

export default CheckDate;
