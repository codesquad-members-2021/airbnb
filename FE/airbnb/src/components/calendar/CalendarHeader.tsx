import styled from 'styled-components';

interface Props {
  year: number;
  month: number;
}

const CalendarHeader = ({ year, month }: Props) => {
  return (
    <StyledCalendarHeader>
      {year}년 {month}월
    </StyledCalendarHeader>
  );
};

export default CalendarHeader;

const StyledCalendarHeader = styled.div`
  text-align: center;
  height: 23px;
  font-weight: 700;
  margin-bottom: 1rem;
`;
