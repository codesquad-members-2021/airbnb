import { useEffect } from 'react';
import styled from 'styled-components';
import { useCalendar } from '../../../../../../../util/reduce/calendar';
import YearMonth from './YearMonth';
import DateList from './DateList';

interface ICalendarProps {
  initMouthOption?: number;
}

const Calendar = ({ initMouthOption = 0 }: ICalendarProps) => {
  const {
    state: { strYearMonth, arrDates, arrDays, monthDate },
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
      <DateList arrDates={arrDates} arrDays={arrDays} monthDate={monthDate} />
    </CalendarLayout>
  );
};

export default Calendar;

// --- Styled Components ---
const CalendarLayout = styled.div`
  /* display: flex; */
`;
