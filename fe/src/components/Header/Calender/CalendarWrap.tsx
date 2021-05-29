import React, { useEffect, useState } from 'react';
import styled from 'styled-components';

import { useRecoilState } from 'recoil';
import { calendarDateState } from '@recoil/atoms/date';
import { modalStates } from '@recoil/atoms/modalState';

import Calendar from './Calendar';
import DayOfTheWeek from './DayOfTheWeek';
import { ReactComponent as RightArrow } from '@assets/chevron-right.svg';
import { ReactComponent as LeftArrow } from '@assets/chevron-left.svg';

const CalendarWrap = () => {
  const [position, setPosition] = useState<number>(0);
  const [duration, setDuration] = useState<number>(0.3);
  const [clickDirection, setClickDirection] = useState<string>('');
  const [calendarDate, setCalendarDate] = useRecoilState(calendarDateState);
  const [isOpenModal, setIsOpenModal] = useRecoilState(modalStates);

  const handleClickOpenCalendar = (e: React.MouseEvent): void => {
    e.stopPropagation();
    setIsOpenModal({
      ...isOpenModal,
      calendar: true,
    });
  };

  const handleClickRightArrow = (): void => {
    const movePos = -54;
    setPosition(movePos);
    setClickDirection('right');
  };

  const handleClickLeftArrow = (): void => {
    const movePos = 54;
    setPosition(movePos);
    setClickDirection('left');
  };

  const getMonth = (year: number, month: number, addMonth: number) =>
    new Date(year, month + addMonth).getMonth();

  const getYear = (year: number, month: number, addMonth: number) =>
    new Date(year, month + addMonth).getFullYear();

  const changeCalendarDate = () => {
    const { year, month } = calendarDate;

    const addMonth = clickDirection === 'right' ? 2 : -2;
    const newMonth: number = getMonth(year, month, addMonth);
    const newYear: number = getYear(year, month, addMonth);

    setCalendarDate({ year: newYear, month: newMonth });
  };

  const handleTransitionEnd = () => {
    setDuration(0);
    changeCalendarDate();
  };

  useEffect(() => {
    setPosition(0);
  }, [duration]);

  useEffect(() => setDuration(0.3), [position]);

  return (
    <CalendarContainer onClick={handleClickOpenCalendar}>
      <CalendarBox>
        <CalendarLists
          position={position}
          duration={duration}
          onTransitionEnd={handleTransitionEnd}
        >
          {new Array(6).fill(null).map((_, idx) => (
            <Calendar
              key={calendarDate.month + idx}
              calendarDate={calendarDate}
              idx={idx - 2}
            />
          ))}
        </CalendarLists>
      </CalendarBox>
      <WeekBox>
        <DayOfTheWeek />
        <DayOfTheWeek />
      </WeekBox>
      <RightArrow onClick={handleClickRightArrow} className="right-arrow" />
      <LeftArrow onClick={handleClickLeftArrow} className="left-arrow" />
    </CalendarContainer>
  );
};

export default CalendarWrap;

const CalendarContainer = styled.div`
  display: flex;
  justify-content: space-evenly;
  margin-top: 2rem;
  width: 916px;
  height: 512px;
  background-color: ${({ theme }) => theme.color.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: ${({ theme }) => theme.borderRadius.calendar};
  position: relative;

  .right-arrow {
    position: absolute;
    right: 5%;
    top: 12%;
    cursor: pointer;
  }

  .left-arrow {
    position: absolute;
    left: 5%;
    top: 12%;
    cursor: pointer;
  }
`;

type styleProp = {
  position: number;
  duration: number;
};

const CalendarLists = styled.div<styleProp>`
  display: flex;
  justify-content: space-evenly;
  width: 800px;
  height: 100%;
  position: relative;
  transform: ${({ position }) => `translateX(${position}rem)`};
  transition: ${({ duration }) => `all ${duration}s`} ease-in-out;
`;

const CalendarBox = styled.div`
  overflow: hidden;
`;

const WeekBox = styled.div`
  top: 18%;
  position: absolute;
  display: flex;
  justify-content: space-evenly;
  width: 800px;
  height: 24px;
  text-align: center;
`;
