import React, { useState } from 'react';
import styled from 'styled-components';
import SingleCalendar from './SingleCalendar';

const Calendar = () => {
  const [calRange, setCalRange] = useState([-1, 0, 1, 2]);
  const [currentDistance, setCurrentDistance] = useState(-25.8);
  const [disabled, setDisabled] = useState(false);
  const oneMove = 25.8;

  const preventClick = () => {
    setTimeout(() => {
      setDisabled(false);
    }, 300);
  };

  const handleLeftClick = () => {
    if (disabled) return;
    setDisabled(true);
    preventClick();
    setCurrentDistance((currentDistance) => currentDistance + oneMove);
    setCalRange((calRange) => {
      const nextRange = calRange.map((r) => r - 1);
      return nextRange;
    });
  };

  const handleRightClick = () => {
    if (disabled) return;
    setDisabled(true);
    preventClick();
    setCurrentDistance((currentDistance) => currentDistance - oneMove);
    setCalRange((calRange) => {
      const nextRange = calRange.map((r) => r + 1);
      return nextRange;
    });
  };

  const onSlideEnd = () => {
    setCurrentDistance(-25.8);
  };

  return (
    <Calendardiv>
      <CalendarTop>
        <LeftButton onClick={() => handleLeftClick()}>{'<'}</LeftButton>
        <YearMonthUL
          currentDistance={currentDistance}
          onTransitionEnd={() => onSlideEnd()}
        >
          {calRange.map((range) => (
            <YearMonthLI>{new Date().getMonth() + 1 + range}월</YearMonthLI>
          ))}
        </YearMonthUL>
        <RightButton onClick={() => handleRightClick()}>{'>'}</RightButton>
      </CalendarTop>
      <SingleCalendar />
      <SingleCalendar />
      <SingleCalendar />
      <SingleCalendar />
    </Calendardiv>
  );
};

const Calendardiv = styled.div`
  border: 1px solid blue;
  position: relative;
`;

const CalendarTop = styled.div`
  display: flex;
  border: 1px solid green;
  overflow: hidden;
`;

const YearMonthUL = styled.ul`
  display: flex;
  transform: ${({ currentDistance }) => `translateX(${currentDistance}rem)`};
  transition: ${({ currentDistance }) =>
    currentDistance === -25.8 ? '' : '0.3s ease-in'};
`;

const YearMonthLI = styled.li`
  width: 5rem;
  margin: 0 10.09rem;
`;

const LeftButton = styled.button`
  position: absolute;
  width: 50px;
  height: 30px;
  background: none;
  left: 0;
  top: 0;
  cursor: pointer;
  z-index: 2;
`;
const RightButton = styled.button`
  position: absolute;
  right: 0;
  top: 0;
  width: 50px;
  height: 30px;
  background: none;
  cursor: pointer;
  z-index: 2;
`;

export default Calendar;
