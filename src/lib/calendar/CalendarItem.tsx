import React from 'react'
import styled from "styled-components";
import Day from "./Day";
import { DayWrapper } from "../utils/styled";
import { LAST_DAYS, FIRST_DAYS } from "../utils/constant";
import { Calendar, ClickTargetType } from "../utils/types";

export default function CalendarItem({
  year,
  month,
  day,
  firstDay,
  clickTarget,
}: Calendar & {
  clickTarget: ClickTargetType;
}) {
  const empty = FIRST_DAYS[firstDay];
  const days = LAST_DAYS[day];
  return (
    <CalendarItemWrapper>
      <CalendarItemYearMonth>
        {year}년 {month}월
      </CalendarItemYearMonth>
      <CalendarItemDays>
        {empty.map((el) => (
          <DayWrapper typeOfDay="none" />
        ))}
        {days.map((day) => (
          <Day {...{ year, month, day, firstDay, clickTarget }} />
        ))}
      </CalendarItemDays>
    </CalendarItemWrapper>
  );
}

const CalendarItemWrapper = styled.ul``;
const CalendarItemYearMonth = styled.div`
  text-align: center;
  margin-bottom: 2.5rem;
`;

const CalendarItemDays = styled.ul`
  box-sizing: border-box;
  width: 100%;
  padding: 0 2rem;
  display: flex;
  flex-wrap: wrap;
`;
