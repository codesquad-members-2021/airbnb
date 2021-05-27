import { useEffect, useState } from 'react';
import styled from 'styled-components';
import CalendarHeader from './CalendarHeader';
import DayNames from './DayNames';
import getCalendarMatrix from './build';

const Calendar = ({ calendar }) => {
  const [calendarMatrix, setCalendarMatrix] = useState([]);

  useEffect(() => {
    setCalendarMatrix(getCalendarMatrix(calendar));
  }, [calendar]);

  return (
    <CalendarContainer>
      <CalendarHeader calendar={calendar} />
      <CalendarBody>
        <DayNames />
        {calendarMatrix.map((week, i) => (
          <Week key={i}>
            {week.map((day, i) =>
              day ? (
                <Day key={day.format('YYYY-MM-DD')}>
                  {day && day.format('D').toString()}
                </Day>
              ) : (
                <Day key={i}></Day>
              )
            )}
          </Week>
        ))}
      </CalendarBody>
    </CalendarContainer>
  );
};

const CalendarContainer = styled.table``;

const CalendarBody = styled.tbody`
  display: flex;
  flex-direction: column;

  flex-wrap: wrap;
  gap: 4px 0px;
`;

const Week = styled.tr`
  display: flex;
`;

const Day = styled.td`
  display: flex;
  align-items: center;
  justify-content: center;
  width: 48px;
  height: 48px;
  font-weight: bold;
  font-size: ${({ theme }) => theme.fontSizes.XS};
`;

export default Calendar;
