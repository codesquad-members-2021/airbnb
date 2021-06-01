import { useEffect, useRef, useState, ReactElement } from 'react';
import styled from 'styled-components';
import {
  useSearchBarDispatch,
  useSearchBarState,
} from '../../../../../../contexts/SearchBarContext';
import CalendarCarousel from './CalendarCarousel';
import Modal from '../../../../../Common/Modal';
import Calendar from './Calendar';

const CalendarModal = ({ ...props }) => {
  // 1. 초기 값 설정
  const [calendars, setCalendars] = useState(() =>
    Array.from({ length: 4 }, (_, i) => ({ key: i, initMouthOption: i - 1 })),
  );
  const calendarNextKey = useRef(4);

  const state = useSearchBarState();
  const dispatch = useSearchBarDispatch();

  // =======

  // 2. useEffect
  // 1) 첫 렌더
  useEffect(() => {
    dispatch({
      type: 'SET_CALENDAR_MONTH_OPTION',
      payload: {
        firstMonthOption: -1,
        lastMonthOption: 2,
      },
    });
  }, []);

  // 2) Calendar의 MOUTH OPTION이 변경되었을 경우
  const updateOnPrev = (monthOption: number) => {
    const arrCalendars = calendars.filter((_, i) => i !== calendars.length - 1);
    const firstInsert = {
      key: calendarNextKey.current,
      initMouthOption: monthOption,
    };
    calendarNextKey.current++;
    setCalendars([firstInsert, ...arrCalendars]);
  };

  const updateOnNext = (monthOption: number) => {
    const arrCalendars = calendars.filter((_, i) => i !== 0);
    const lastInsert = {
      key: calendarNextKey.current,
      initMouthOption: monthOption,
    };
    calendarNextKey.current++;
    setCalendars([...arrCalendars, lastInsert]);
  };

  useEffect(() => {
    const { firstMonthOption, lastMonthOption } = state.calendar;
    if (!firstMonthOption && !lastMonthOption) return;

    const firstCalendar = calendars.find(
      (cal) => cal.initMouthOption === firstMonthOption,
    );
    const lastCalendar = calendars.find(
      (cal) => cal.initMouthOption === lastMonthOption,
    );

    // ◀ 클릭 시, firstCalendar는 없는 상태가 됨. 만들어야 함 | 맨 마지막에 있는 Calendar는 사라져야함.
    if (!firstCalendar) updateOnPrev(firstMonthOption);
    // ▶ 클릭 시, lastCalendar는 없는 상태가 됨. 만들어야 함 | 맨 처음에 있는 Calendar는 사라져야함.
    else if (!lastCalendar) updateOnNext(lastMonthOption);
  }, [state.calendar]);

  // =======

  // 3. Events
  const carouselOptions = {
    handleLeftClick: () => dispatch({ type: 'DECREASE_CALENDAR_MOUTH_OPTION' }),
    handleRightClick: () =>
      dispatch({ type: 'INCREASE_CALENDAR_MOUTH_OPTION' }),
  };

  // 4. render 관련
  const renderCalendars = (): ReactElement[] => {
    return calendars.map((calData) => (
      <Calendar key={calData.key} initMouthOption={calData.initMouthOption} />
    ));
  };

  return (
    <CalendarModalLayout {...props}>
      <CalendarCarousel {...carouselOptions}>{renderCalendars()}</CalendarCarousel>
      {/* 여기서 버튼 이전 & 다음 눌러서 컨트롤 */}
    </CalendarModalLayout>
  );
};

export default CalendarModal;

// --- Styled Components ---
const CalendarModalLayout = styled(Modal)`
  position: absolute;
  left: 0;
  right: 0;

  /* width: 100%; */

  justify-content: center;
  align-items: flex-start;
  column-gap: 24px;
  padding: 36px 24px 32px;
  border-radius: 40px;
  background-color: ${({ theme }) => theme.colors.white};
`;
