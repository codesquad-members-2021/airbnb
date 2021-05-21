import styled from 'styled-components';
import React, { useState, ReactElement, ReactNode } from 'react';
import { useRecoilValue, useRecoilState } from 'recoil';

import { ReservationBarBtnType, T_CheckInOut } from '../atoms';
import { SelectedBtn, CheckInOut } from '../atoms';

export type CalendarProps = {
  className?: string,
  width: number,
  todayDate: Date,
  year: number,
  month: number // 0-based
}

function Calendar({ className, todayDate, width, year, month }: CalendarProps): ReactElement {
  const [selectedBtn, setSelectedBtn] = useRecoilState(SelectedBtn);
  const [checkInOut, setCheckInOut] = useRecoilState(CheckInOut);

  const handleClickDate = ({ target }: React.MouseEvent<HTMLTableSectionElement>): void => {
    if (!(target as HTMLElement).dataset.date)
      return;
    
    const dateValue: number = Number((target as HTMLElement).dataset.date);
    const newCheckInOut: T_CheckInOut = { ...checkInOut };

    if (selectedBtn === ReservationBarBtnType.CheckIn) {
      newCheckInOut.in = dateValue;

      if (newCheckInOut.out && newCheckInOut.out > dateValue)
        newCheckInOut.out = null;
      
      setSelectedBtn(ReservationBarBtnType.CheckOut);
    } else {
      newCheckInOut.out = dateValue;

      if (checkInOut.in && dateValue < checkInOut.in) {
        newCheckInOut.in = dateValue;
        newCheckInOut.out = null;
      } else if (!checkInOut.in) {
        setSelectedBtn(ReservationBarBtnType.CheckIn);
      }
    }

    setCheckInOut(newCheckInOut);
  }

  const renderDate = (currDate: Date): ReactElement => {
    const _getTdClassName = (currDate: Date): string => {
      if (!checkInOut.in || !checkInOut.out || checkInOut.in === checkInOut.out)
        return '';

      const v: number = currDate.valueOf();
      if (v === checkInOut.in) return 'selected-start';
      if (v === checkInOut.out) return 'selected-end';
      if (v > checkInOut.in && v < checkInOut.out) return 'selected-intermediate';
      return '';
    };

    function _isPast(todayDate: Date, currDate: Date): boolean {
      if (todayDate.getFullYear() > currDate.getFullYear()) return true;
      if (todayDate.getMonth() > currDate.getMonth()) return true;
      if (todayDate.getMonth() === currDate.getMonth() && todayDate.getDate() > currDate.getDate()) return true;
      return false;
    };

    return (
      <>
        <td key={currDate.valueOf()} className={_getTdClassName(currDate)}>
          <div
            className={
              (_isPast(todayDate, currDate) ? 'past' : '') +
              (currDate.valueOf() === checkInOut.in || currDate.valueOf() === checkInOut.out ? ' selected' : '')
            }
            data-date={currDate.valueOf()}>
            {currDate.getDate()}
          </div>
        </td>
      </>
    );
  }

  const renderWeeks = (): ReactElement[] => {
    const weeks: ReactElement<HTMLTableRowElement>[] = [];

    let currDate: Date = new Date(year, month, 1);

    while (currDate.getMonth() === month) {
      const week: (ReactElement<HTMLTableDataCellElement>|null)[] = Array(7).fill(null);

      for (let i = 0; i < 7; i++) {
        if (currDate.getDay() > i || currDate.getMonth() !== month) {
          week[i] = <td key={i}></td>;
          continue;
        }

        week[i] = renderDate(currDate);
        currDate.setDate(currDate.getDate() + 1);
      }

      weeks.push(<tr key={weeks.length}>{week}</tr>);
    }
    
    return weeks;
  }

  return (
    <StyledCalendar width={width}>
      <YearMonth>
        {year + '년 ' + (month + 1) + '월'}
      </YearMonth>
      <CalendarTable>
        <CalendarTableBody onClick={handleClickDate}>
          {renderWeeks()}
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
        color: #ffffff;
        background-color: #333333;
      }
    }

    &.selected-start,
    &.selected-intermediate,
    &.selected-end {
      background-color: #cdcdcd;
    }

    &.selected-start {
      border-radius: 9999px 0 0 9999px;
    }

    &.selected-end {
      border-radius: 0 9999px 9999px 0;
    }
  }
`;
