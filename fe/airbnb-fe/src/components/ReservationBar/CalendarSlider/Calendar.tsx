import styled from 'styled-components';
import React, { useState, ReactElement, ReactNode } from 'react';
import { useRecoilState } from 'recoil';
import { CheckInOutState } from '../atoms';

export type CalendarProps = {
  className?: string,
  width: number,
  todayDate: Date,
  year: number,
  month: number
}

function _isPast(todayDate: Date, currDate: Date): boolean {
  if (todayDate.getFullYear() > currDate.getFullYear()) return true;
  if (todayDate.getMonth() > currDate.getMonth()) return true;
  if (todayDate.getMonth() === currDate.getMonth() && todayDate.getDate() > currDate.getDate()) return true;
  return false;
}

function Calendar({ className, todayDate, width, year, month }: CalendarProps): ReactElement {
  const [checkInOut, setCheckInOut] = useRecoilState(CheckInOutState);

  const handleClickDate = ({ target }: React.MouseEvent<HTMLTableSectionElement>): void => {
    if (!(target as HTMLElement).dataset.date)
      return;

    
  }

  const renderDates = (): ReactElement[] => {
    const weeks: ReactElement<HTMLTableRowElement>[] = [];

    let currDate: Date = new Date(year, month, 1);

    while (currDate.getMonth() === month) {
      const week: (ReactElement<HTMLTableDataCellElement>|null)[] = Array(7).fill(null);

      for (let i = 0; i < 7; i++) {
        if (currDate.getDay() > i || currDate.getMonth() !== month) {
          week[i] = <td></td>;
          continue;
        }

        week[i] = (
          <td>
            <div
              className={_isPast(todayDate, currDate) ? 'past' : ''}
              data-date={currDate.valueOf()}>
              {currDate.getDate()}
            </div>
          </td>
        );
        currDate.setDate(currDate.getDate() + 1);
      }

      weeks.push(<tr>{week}</tr>);
    }
    
    return weeks;
  }

  return (
    <StyledCalendar width={width}>
      <YearMonth>
        {year + '년 ' + month + '월'}
      </YearMonth>
      <CalendarTable>
        <CalendarTableBody onClick={handleClickDate}>
          {renderDates()}
        </CalendarTableBody>
      </CalendarTable>
    </StyledCalendar>
  )
}

export default Calendar;

type StyledCalendarProps = {
  width: number,
}

const StyledCalendar = styled.div<StyledCalendarProps>`
  width: ${props => `${props.width}px`};
  color: #333333;
  font-weight: 800;
`;

const YearMonth = styled.div`
  padding: 1rem 0;
  font-size: 1.5rem;
`;

const CalendarTable = styled.table`
  padding-top: 3.5rem;
  margin: 0;
  border-spacing: 0;
`;

const CalendarTableBody = styled.tbody`
  td {
    width: 3.8rem;
    height: 3.8rem;
    padding: 0;
    margin: 0;
    font-size: 1.2rem;
    cursor: pointer;
    

    & > div {
      width: 100%;
      height: 100%;
      box-sizing: border-box;
      padding-top: 1rem;
      border-radius: 9999px;
      border: 1.5px transparent solid;

      &.past {
        color: #bdbdbd;
        cursor: default;
        pointer-events: none;
      }

      &:not(.past):hover, &.selected {
        border-color: #333333;
      }

      &.selected {
        background-color: #333333;
      }
    }

    &.selected-start {

    }

    &.selected-intermediate {

    }

    &.selected-end {
    }
  }
`;
