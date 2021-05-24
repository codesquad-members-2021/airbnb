import React, { useState } from 'react';
import styled from 'styled-components';
import SingleCalendar from './SingleCalendar';
import TestSingleCalendar from './TestSingleCalendar';
import YearMonth from './YearMonth';
import DayViewTR from './DayViewTR';
const Calendar = () => {
  const [calRange, setCalRange] = useState([-1, 0, 1, 2]);
  const [currentDistance, setCurrentDistance] = useState(-27.2); //가운데 = -27.2rem
  const [disabled, setDisabled] = useState(false);
  const oneMove = 25.3;

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
    setCurrentDistance(-27.2);
  };

  return (
    <CalendarDiv>
      <CalendarTop>
        <LeftButton onClick={() => handleLeftClick()}>{'<'}</LeftButton>
        <YearMonthUL
          currentDistance={currentDistance}
          onTransitionEnd={() => onSlideEnd()}
        >
          {calRange.map((range, idx) => (
            <YearMonthLI key={idx}>
              <YearMonth range={range} />
            </YearMonthLI>
          ))}
        </YearMonthUL>
        <RightButton onClick={() => handleRightClick()}>{'>'}</RightButton>
      </CalendarTop>
      <CalendarMiddle>
        <DayViewTR />
        <DayViewTR />
      </CalendarMiddle>
      <CalendarBottom>
        <CalTableWrapper
          currentDistance={currentDistance}
          onTransitionEnd={() => onSlideEnd()}
        >
          {calRange.map((range, idx) => (
            <div key={idx}>
              <SingleCalendar range={range} />
              {/* <TestSingleCalendar range={range} /> */}
            </div>
          ))}
        </CalTableWrapper>
      </CalendarBottom>
    </CalendarDiv>
  );
};

const CalendarDiv = styled.div`
  border: 1px solid blue;
  position: relative;
  display: flex;
  flex-direction: column;
`;

const CalendarTop = styled.div`
  display: flex;
  border: 1px solid green;
  font-size: 1rem;
  margin-bottom: 1.5rem;
  /* overflow: hidden; */
`;

const CalTableWrapper = styled.div`
  display: flex;
  transform: ${({ currentDistance }) => `translateX(${currentDistance}rem)`};
  transition: ${({ currentDistance }) =>
    currentDistance === -27.2 ? '' : '0.3s ease-in'};
`;
const CalendarBottom = styled.div`
  display: flex;
  border: 1px solid yellow;
`;

const CalendarMiddle = styled.div`
  display: flex;
`;

// const DayViewTR = styled.tr`
//   width: 21rem;
//   display: flex;
//   margin-right: 4.25rem;
//   margin-bottom: 0.25rem;
// `;

// const DayViewTD = styled.td`
//   width: 3rem;
//   height: 1.5rem;
//   font-size: 0.75rem;
//   color: ${({ theme }) => theme.colors.gray3};
// `;

const YearMonthUL = styled.ul`
  display: flex;
  transform: ${({ currentDistance }) => `translateX(${currentDistance}rem)`};
  transition: ${({ currentDistance }) =>
    currentDistance === -27.2 ? '' : '0.3s ease-in'};
`;

const YearMonthLI = styled.li`
  width: 21rem;
  margin: 0 2.125rem;
  border: 2px solid gray;
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
