import { ReactElement } from 'react';
import styled from 'styled-components';
import { idText } from 'typescript';

interface Props {
  monthData: number[][];
}

const CalendarDate = ({ monthData }: Props) => {
  const DAYS = ['일', '월', '화', '수', '목', '금', '토'];
  const getDateList = (weekData: number[]): ReactElement[] => {
    return weekData.map(
      (date: number): ReactElement => <div className='date'>{date ? date : ''}</div>
    );
  };

  const daysList = DAYS.map((day: string): ReactElement => <div className='day'>{day}</div>);
  const weekList: ReactElement[] = monthData.map((week) => {
    return <div className='week'>{getDateList(week)}</div>;
  });
  return (
    <StyledCalendarDate>
      <div className='date-wrapper'>{daysList}</div>
      <div className='month'>{weekList}</div>
    </StyledCalendarDate>
  );
};

export default CalendarDate;

const StyledCalendarDate = styled.div`
  .week,
  .date-wrapper {
    display: flex;
  }
  .day,
  .date {
    width: 3rem;
    height: 3rem;
    font-size: ${({ theme }) => theme.fontSize.small};
    text-align: center;
  }
  .date {
    font-weight: bold;
  }
  .day {
    color: ${({ theme }) => theme.colors.gray3};
  }
`;
