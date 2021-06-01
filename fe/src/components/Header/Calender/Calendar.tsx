import { useRecoilState, useRecoilValue } from 'recoil';
import React from 'react';
import styled from 'styled-components';
import { v4 as uuidv4 } from 'uuid';

import {
  isCheckInOut,
  checkDate,
  currentHoverDate,
  checkinNewDate,
} from '@recoil/atoms/date';
import Day from './Day';

type Props = {
  calendarDate: {
    year: number;
    month: number;
  };
  idx: number;
};

const Calendar = ({ calendarDate, idx }: Props) => {
  const [checkState, setCheckState] = useRecoilState(isCheckInOut);
  const [selectCheckState, setSelectCheckState] = useRecoilState(checkDate);
  const [hoverDate, setHoverDate] = useRecoilState(currentHoverDate);
  const currentCheckinDate = useRecoilValue(checkinNewDate);

  const { checkin, checkout } = checkState;
  const { year, month } = calendarDate;

  const currentMonth = new Date(year, month + idx).getMonth() + 1;
  const currentYear = new Date(year, month + idx).getFullYear();

  const firstDay: number = new Date(year, month + idx).getDay();
  const days: number = new Date(year, currentMonth, 0).getDate();

  const getDayList = (): number[][] => {
    const dayList: number[][] = [];
    let week: number[] = new Array(7).fill(0);

    for (let i = 1; i <= days; i++) {
      const dayIndex: number = (firstDay + i - 1) % 7;
      if (dayIndex % 7 === 0 || week[week.length - 1]) {
        dayList.push(week);
        week = new Array(7).fill(0);
      }
      week[dayIndex] = i;
    }
    dayList.push(week);
    return dayList;
  };

  const dayList = getDayList();

  const chooseCheckIn = (el: HTMLElement): void => {
    setCheckState({ ...checkState, checkin: true });
    setSelectCheckState({
      ...selectCheckState,
      checkinDate: {
        year: currentYear,
        month: currentMonth,
        day: Number(el.textContent),
      },
    });
  };

  const resetCheckDate = (el: HTMLElement): void => {
    setCheckState({ ...checkState, checkout: false });
    setSelectCheckState({
      checkinDate: {
        year: currentYear,
        month: currentMonth,
        day: Number(el.textContent),
      },
      checkoutDate: {
        year: 0,
        month: 0,
        day: 0,
      },
    });
  };

  const checkIfIsValidDate = (currDate: number): boolean => {
    return currDate < hoverDate ? true : false;
  };

  const chooseCheckOut = (el: HTMLElement): void => {
    if (!checkIfIsValidDate(currentCheckinDate)) return chooseCheckIn(el);

    setCheckState({ ...checkState, checkout: true });
    setSelectCheckState({
      ...selectCheckState,
      checkoutDate: {
        year: currentYear,
        month: currentMonth,
        day: Number(el.textContent),
      },
    });
  };

  const handleClickDay = (e: React.MouseEvent): void => {
    const el = e.target as HTMLElement;
    if (el.tagName !== 'TD' || el.textContent === '') return;

    if (checkin === false) chooseCheckIn(el);
    else if (checkin === true && checkout === false) chooseCheckOut(el);
    else if (checkin === true && checkout === true) {
      currentCheckinDate > hoverDate ? resetCheckDate(el) : chooseCheckOut(el);
    }
  };

  const handleMouseOverDay = (e: React.MouseEvent) => {
    const el = e.target as HTMLTableCellElement;
    if (!el.closest('TD') || el.textContent === '') return;
    setHoverDate(
      new Date(currentYear, currentMonth, Number(el.textContent)).getTime()
    );
  };

  return (
    <StyledDiv onClick={handleClickDay} onMouseOver={handleMouseOverDay}>
      <h3>
        {currentYear}년 {currentMonth}월
      </h3>
      <DatesWrap>
        <table>
          <tbody>
            {dayList.map((week) => {
              return (
                <tr key={uuidv4()}>
                  {week.map((day) => {
                    if (day === 0) return <td key={uuidv4()}></td>;
                    return (
                      <Day key={day} cYear={currentYear} cMonth={currentMonth}>
                        {day}
                      </Day>
                    );
                  })}
                </tr>
              );
            })}
          </tbody>
        </table>
      </DatesWrap>
    </StyledDiv>
  );
};

export default React.memo(Calendar);

const StyledDiv = styled.div`
  margin: 4rem 3rem;
  width: 336px;
  height: 384px;
  text-align: center;
`;

const DatesWrap = styled.div`
  margin: 48px 0;
  width: 336px;
  height: 336px;
`;
