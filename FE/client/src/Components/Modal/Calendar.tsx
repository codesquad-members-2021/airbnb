import styled from 'styled-components';
import { useRecoilValue } from 'recoil';
import { calendarStateSelector } from './../../recoil/atoms';
import Month from './Month';
import { CalendarType } from '../commons/searchBarType';

const Calendar = ({entryDate} : CalendarType) => {
  const calendarState = useRecoilValue(calendarStateSelector);

  return (
    <CalendarWrapper {...{entryDate}}>
      <Month left='0%' date={calendarState.leftMonthDate}/>
      <Month right='0%' date={calendarState.rightMonthDate}/>
    </CalendarWrapper>
  )
}

// eslint-disable-next-line no-mixed-operators
const CalendarWrapper = styled.div<CalendarType>`
  display:${({entryDate}) => entryDate ? 'flex' : 'none'};
  background: #fff;
  padding: 5% 7%; 
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  gap: 3rem;
  border-radius: 40px;
`;


export default Calendar;
