// yearmonth & datelist + 기능
import styled from 'styled-components';
import { useEffect } from 'react';
import useCalendar from '../../../../../hooks/useCalendar';
import YearMonth from './YearMonth';
import DateList from './DateList';

const Calendar = () => {
  const { calendarState: state, calendarDispatch: dispatch } = useCalendar();
  const { nMouthOption, arrDays, arrDates, strYearMonth } = state;

  useEffect(() => dispatch({ type: 'CREATE_INIT_CALENDAR' }), []);
  useEffect(() => dispatch({ type: 'UPDATE_CALENDAR' }), [nMouthOption]);

  const handleNextMonthClick = () =>
    dispatch({ type: 'INCREASE_MOUTH_OPTION' });
  const handlePrevMonthClick = () =>
    dispatch({ type: 'DECREASE_MOUTH_OPTION' });

  return (
    <CalendarLayout>
      <button onClick={handlePrevMonthClick}>{'<'}</button>
      <button onClick={handleNextMonthClick}>{'>'}</button>
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
