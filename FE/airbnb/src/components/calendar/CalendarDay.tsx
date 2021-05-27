import { ReactElement } from 'react';
import styled from 'styled-components';

const CalendarDay = () => {
  const DAYS = ['일', '월', '화', '수', '목', '금', '토'];
  const daysList = DAYS.map((day: string): ReactElement => <div className='day'>{day}</div>);
  return <StyledDaysList>{daysList}</StyledDaysList>;
};

export default CalendarDay;

const StyledDaysList = styled.div`
  display: flex;
  .day {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 3rem;
    height: 3rem;
    font-size: ${({ theme }) => theme.fontSize.small};
    color: ${({ theme }) => theme.colors.gray3};
  }
`;
