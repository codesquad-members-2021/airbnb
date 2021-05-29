import { useEffect } from 'react';
import styled from 'styled-components';
import useCalendar from '../../../../../../hooks/useCalendar';
import YearMonth from './YearMonth';
import DateList from './DateList';

interface ICalendarProps {
  initMouthOption?: number;
}

const Calendar = ({ initMouthOption = 0 }: ICalendarProps) => {
  const {
    state: { strYearMonth, arrDates, arrDays },
    dispatch,
  } = useCalendar();

  useEffect(() => {
    dispatch({
      type: 'CREATE_CALENDAR',
      payloadMouthOption: initMouthOption,
    });
  }, []);

  return (
    <CalendarLayout>
      <YearMonth>{strYearMonth}</YearMonth>
      <DateList arrDates={arrDates} arrDays={arrDays} />
    </CalendarLayout>
  );
};

export default Calendar;

// --- Styled Components ---
const CalendarLayout = styled.div`
  /* display: flex; */
`;
