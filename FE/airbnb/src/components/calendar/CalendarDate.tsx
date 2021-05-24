import { ReactElement } from 'react';
import styled from 'styled-components';
import { dayType } from './Calendar';

interface Props {
  monthData: dayType[][];
}

const CalendarDate = ({ monthData }: Props) => {
  const DAYS = ['일', '월', '화', '수', '목', '금', '토'];
  const daysList = DAYS.map((day: string): ReactElement => <div className='day'>{day}</div>);
  const getDateList = (weekData: dayType[]): ReactElement[] => {
    return weekData.map(
      ({ date, isAble }: dayType): ReactElement => (
        <div className={isAble ? 'date' : 'date disable-date'}>{date ? date : ''}</div>
      )
    );
  };

  const weekList: ReactElement[] = monthData.map((week, idx) => {
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
    cursor: pointer;
  }
  .day {
    color: ${({ theme }) => theme.colors.gray3};
  }
  .disable-date {
    color: #bdbdbd;
    cursor: default;
  }
`;
