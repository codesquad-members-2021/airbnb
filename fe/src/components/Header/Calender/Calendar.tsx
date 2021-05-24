import { useState } from 'react';
import { useRecoilState } from 'recoil';
import styled from 'styled-components';

import DayOfTheWeek from './DayOfTheWeek';
import { calendarDateState } from '@recoil/atoms/date';

const Calendar = () => {
  const [CalendarDate, setCalendaDate] = useRecoilState(calendarDateState);
  const { year, month } = CalendarDate;
  const days = new Date(year, month, 0).getDate();

  const dayList = [];
  let week = new Array(7).fill(null);
  for (let i = 0; i < days; i++) {}

  return (
    <StyledDiv>
      <h3>
        {year}년 {month}월
      </h3>
      <DatesWrap>
        <DayOfTheWeek />
        <table>
          <tbody></tbody>
        </table>
      </DatesWrap>
    </StyledDiv>
  );
};

export default Calendar;

const StyledDiv = styled.div`
  margin: 4rem 0;
  width: 336px;
  height: 384px;
  text-align: center;
`;

const DatesWrap = styled.div`
  width: 336px;
  height: 336px;
`;

const Row = styled.tr`
  width: 100%;
`;

const Day = styled.td`
  width: 48px;
  height: 48px;
  text-align: center;
`;
