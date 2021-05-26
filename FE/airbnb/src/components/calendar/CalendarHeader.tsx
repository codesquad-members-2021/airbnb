import styled from 'styled-components';
import { calendarDateType } from '../../recoil/calendarAtom';

interface Props {
  calendarDate: calendarDateType;
}

const CalendarHeader = ({ calendarDate: { year, month } }: Props) => {
  return (
    <StyledCalendarHeader>
      {year}년 {month}월
    </StyledCalendarHeader>
  );
};

export default CalendarHeader;

const StyledCalendarHeader = styled.div`
  text-align: center;
  width: 336px;
  height: 23px;
  font-weight: 700;
  margin-bottom: 1rem;
`;
