import React, { useContext } from "react";
import styled from "styled-components";
import { MethodContext, StateContext } from "./Calendar";
type CalendarItemProps = {
  year: number;
  month: number;
  day: number;
  firstDay: number;
};
export default function CalendarItem({
  year,
  month,
  day,
  firstDay,
}: CalendarItemProps) {
  return (
    <CalendarItemWrapper>
      {days.map((day) => (
        <Day>{day}</Day>
      ))}
    </CalendarItemWrapper>
  );
}

function Day(year, month, day) {
  const context = useContext(MethodContext);
  const state = useContext(StateContext);
  const { mode, startDate, endDate } = state;
  const result = {
    year,
    month,
    day,
    week: "일요일",
  };
  return (
    <DayWrapper>
      <DayCircle
        onClick={() => {
          onClickDay(result);
        }}
      >
        1
      </DayCircle>
    </DayWrapper>
  );
}

const CalendarItemWrapper = styled.ul`
  display: flex;
  flex-wrap: wrap;
`;
const DayWrapper = styled.li``;
const DayCircle = styled.div``;
