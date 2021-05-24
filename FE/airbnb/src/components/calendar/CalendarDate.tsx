import { ReactElement } from 'react';
import styled from 'styled-components';
import { dayType } from '../../recoil/calendarAtom';

interface Props {
  monthData: dayType[][];
}

const CalendarDate = ({ monthData }: Props) => {
  const getDateList = (weekData: dayType[]): ReactElement[] => {
    return weekData.map(
      ({ date, isAble }: dayType): ReactElement => (
        <div className={!isAble && date ? 'disable-date date__wrapper' : 'able-date date__wrapper'}>
          <div className={!isAble && date ? 'date disable-date' : 'date'}>{date ? date : ''}</div>
        </div>
      )
    );
  };

  const weekList: ReactElement[] = monthData.map((week) => {
    return <div className='week'>{getDateList(week)}</div>;
  });
  return (
    <StyledCalendarDate>
      <div className='month'>{weekList}</div>
    </StyledCalendarDate>
  );
};

export default CalendarDate;

const StyledCalendarDate = styled.div`
  .week,
  .date__wrapper {
    display: flex;
  }
  .week {
    margin-bottom: 3px;
  }
  .date,
  .date__wrapper {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 3rem;
    height: 3rem;
    font-size: ${({ theme }) => theme.fontSize.small};
  }
  .date {
    font-weight: bold;
    cursor: pointer;
    border-radius: 100%;
  }
  .disable-date {
    color: #bdbdbd;
    cursor: default;
    background-color: ${({ theme }) => theme.colors.gray6};
    .date:hover {
      border: ${({ theme }) => `1px dashed ${theme.colors.gray4}`};
    }
  }
  .able-date {
    .date:hover {
      border: 1px solid black;
    }
  }
`;
