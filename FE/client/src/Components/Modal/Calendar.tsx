import { useCallback, useState } from 'react';
import styled from 'styled-components';
import { useRecoilValue, useSetRecoilState } from 'recoil';
import Month from './Month';
import { CalendarType } from '@Components/commons/baseType';
import { calendarStateSelector, monthIndexAtom } from '@/recoil/atoms';
import { getDate } from '@/utils/calendarUtil';
import { delay } from '@/utils/serviceUtils';

const Calendar = ({ entryDate }: CalendarType) => {
  const calendarState = useRecoilValue(calendarStateSelector);
  const setMonthIndex = useSetRecoilState(monthIndexAtom);
  const [moveLocationState, setMoveLocationState] = useState(0);

  const handleClickMonthMove = useCallback((moveCount: number) => async () => {
    setMoveLocationState(-moveCount * 110);
    await delay(500);
    setMoveLocationState(0);
    setMonthIndex(month => month + moveCount * 2);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  return (
    <CalendarWrapper {...{ entryDate }}>
      <CalendarDataWrapper {...{ moveLocationState }}>
        <LeftCalendarWrapper>
          <Month left='0%' date={getDate(calendarState.leftMonthDate, -2)}  {...{ handleClickMonthMove }} />
          <Month right='0%' date={getDate(calendarState.leftMonthDate, -1)}  {...{ handleClickMonthMove }} />
        </LeftCalendarWrapper>
        <Month left='0%' date={calendarState.leftMonthDate} {...{ handleClickMonthMove }} />
        <Month right='0%' date={calendarState.rightMonthDate} {...{ handleClickMonthMove }} />
        <RightCalendarWrapper>
          <Month left='0%' date={getDate(calendarState.rightMonthDate, 1)}  {...{ handleClickMonthMove }} />
          <Month right='0%' date={getDate(calendarState.rightMonthDate, 2)}  {...{ handleClickMonthMove }} />
        </RightCalendarWrapper>
      </CalendarDataWrapper>
    </CalendarWrapper>
  )
}

// eslint-disable-next-line no-mixed-operators
const CalendarWrapper = styled.div<CalendarType>`
  position: relative;
  display:${({ entryDate }) => entryDate ? 'flex' : 'none'};
  background: #fff;
  padding: 5% 7%;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  gap: 3rem;
  border-radius: 40px;
  overflow:hidden;
`;

type MoveLocationType = {
  moveLocationState: number;
}

const CalendarDataWrapper = styled.div<MoveLocationType>`
  position:relative;
  display:flex;
  width: 100%;
  transform: ${({ moveLocationState }) => moveLocationState ? `translateX(${moveLocationState}%)` : `translateX(0%)`};
  transition:${({ moveLocationState }) => moveLocationState ? 'all 0.5s ease-out' : 'none'}; 
`;

const LeftCalendarWrapper = styled.div`
  position: absolute;
  display:flex;
  width: 100%;
  transform: translateX(-110%);
`;

const RightCalendarWrapper = styled.div`
  position: absolute;
  display:flex;
  width: 100%;
  transform: translateX(110%);
`;

export default Calendar;
