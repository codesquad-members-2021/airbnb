import { RefObject, useState, useEffect } from 'react';
import { useRecoilState } from 'recoil';
import styled from 'styled-components';
import { calendarState, calendarDateType } from '../../../recoil/calendarAtom';
import Calendar from '../../calendar/Calendar';
import { ReactComponent as CalendarPrevBtn } from '../../../assets/svg/Property 1=chevron-left.svg';
import { ReactComponent as CalendarNextBtn } from '../../../assets/svg/Property 1=chevron-right.svg';

interface Props {
  toggleRef: RefObject<HTMLDivElement>;
}

const FormCalendar = ({ toggleRef }: Props) => {
  const DEFAULT_TRANSITION: string = 'all 0.5s';
  const DEFAULT_POSITION_X: number = -916;
  const [calendarDate, setCalendarDate] = useRecoilState(calendarState);
  const [positionX, setPositionX] = useState<number>(DEFAULT_POSITION_X);
  const [transitionValue, setTransitionValue] = useState<string>(DEFAULT_TRANSITION);
  const [moveType, setMoveType] = useState<string>('');

  useEffect(() => {
    if (transitionValue === 'none') {
      setPositionX(DEFAULT_POSITION_X);
    }
  }, [transitionValue]);

  useEffect(() => {
    setTransitionValue(DEFAULT_TRANSITION);
  }, [positionX]);

  const handleTransitionEnd = (): void => {
    setTransitionValue('none');
    if (moveType === 'prev') moveCalendar(-2);
    else if (moveType === 'next') moveCalendar(+2);
  };

  const moveCalendar = (moveCount: number): void => {
    const newDate = getMovedDate(calendarDate, moveCount);
    setCalendarDate(newDate);
  };

  const handlePrevBtnClick = (): void => {
    setMoveType('prev');
    setPositionX((positionX) => positionX + 910);
  };

  const handleNextBtnClick = (): void => {
    setMoveType('next');
    setPositionX((positionX) => positionX - 910);
  };

  return (
    <StyledFormCalendar {...{ positionX, transitionValue }} ref={toggleRef}>
      <div className='calendarButton'>
        <CalendarPrevBtn onClick={handlePrevBtnClick} />
        <CalendarNextBtn onClick={handleNextBtnClick} />
      </div>
      <div className='calendar__wrapper' onTransitionEnd={handleTransitionEnd}>
        <Calendar {...{ calendarDate: getMovedDate(calendarDate, -2) }} />
        <Calendar {...{ calendarDate: getMovedDate(calendarDate, -1) }} />
        <Calendar {...{ calendarDate }} />
        <Calendar {...{ calendarDate: getMovedDate(calendarDate, 1) }} />
        <Calendar {...{ calendarDate: getMovedDate(calendarDate, 2) }} />
        <Calendar {...{ calendarDate: getMovedDate(calendarDate, 3) }} />
      </div>
    </StyledFormCalendar>
  );
};

const getMovedDate = (date: calendarDateType, moveCount: number): calendarDateType => {
  const { year, month, todayDate } = date;
  let newYear = year;
  let newMonth = month + moveCount;
  if (newMonth > 12) {
    newMonth -= 12;
    newYear++;
  } else if (newMonth < 1) {
    newMonth += 12;
    newYear--;
  }
  return { year: newYear, month: newMonth, todayDate };
};

export default FormCalendar;

interface StyleType {
  positionX: number;
  transitionValue: string;
}

const StyledFormCalendar = styled.div<StyleType>`
  overflow: hidden;
  position: absolute;
  top: 100px;
  left: -6rem;
  display: flex;
  justify-content: space-between;
  padding: 3rem 0;
  width: 916px;
  background-color: ${({ theme }) => theme.colors.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
  .calendarButton {
    z-index: 10;
    position: absolute;
    display: flex;
    justify-content: space-between;
    width: 916px;
    left: 0;
    top: 3rem;
    padding: 0 5rem;
    cursor: pointer;
  }
  .calendar__wrapper {
    display: flex;
    transition: ${({ transitionValue }) => transitionValue};
    transform: ${({ positionX }) => `translateX(${positionX}px)`};
    & > div {
      margin: 0 60px;
    }
  }
`;
