import React from "react";
import styled from "styled-components";
import getCalendarData from "component/searchBar/calendar/getCalendarData";

const days: string[] = ["일", "월", "화", "수", "목", "금", "토"];

interface Props {
  year: number;
  month: number;
}

function Calendar({ year, month }: Props) {
  if (month < 0) {
    month += 12;
    year--;
  }
  if (month > 11) {
    month -= 12;
    year++;
  }
  const weeksData = getCalendarData(year, month);
  return (
    <CalendarContainer>
      <CalendarTitle>
        {year}년 {month + 1}월
      </CalendarTitle>
      <CalendarTable>
        <thead>
          <tr>
            {days.map((day) => (
              <th key={day}>{day}</th>
            ))}
          </tr>
        </thead>
        <tbody>
          {weeksData.map((week) => (
            <tr>
              {week.map((day) => (
                <td>{day}</td>
              ))}
            </tr>
          ))}
        </tbody>
      </CalendarTable>
    </CalendarContainer>
  );
}

export default Calendar;

const CalendarContainer = styled.div`
  width: 336px;
  display: flex;
  flex-direction: column;
  align-items: center;
`;
const CalendarTitle = styled.div`
  margin: 5px 0 24px;
  font-weight: bold;
`;
const CalendarTable = styled.table`
  th {
    width: 48px;
    height: 24px;
    font-size: 12px;
    color: ${({ theme }) => theme.color.gray3};
    line-height: 24px;
  }
  td {
    width: 48px;
    height: 48px;
    text-align: center;
    line-height: 48px;
  }
`;
