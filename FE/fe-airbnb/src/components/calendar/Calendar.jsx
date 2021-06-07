import { useEffect, useState } from 'react';
import styled from 'styled-components';
import CalendarHeader from './CalendarHeader';
import DayNames from './DayNames';
import getCalendarMatrix from './build';
import Day from './Day';

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
            {week.map((day, i) => (
              <Day key={day ? day.format('YYYY-MM-DD') : i} day={day} />
            ))}
          </Week>
        ))}
      </CalendarBody>
    </CalendarContainer>
  );
};

const CalendarContainer = styled.div``;

const CalendarBody = styled.div`
  display: flex;
  flex-direction: column;
  flex-wrap: wrap;
  gap: 4px 0px;
`;

const Week = styled.div`
  display: flex;
`;

export default Calendar;
