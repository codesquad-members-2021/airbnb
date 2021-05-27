import { useState } from "react";
import { useRecoilValue, useRecoilState } from "recoil";
import { modalShowState, calendarState } from "@/Components/GNB/GNBStore";
import CalendarTable from "./CalendarTable/CalendarTable";
import { CalendarModal as S } from "@/Components/GNB/GNBStlyes";

const CalendarModal = () => {
  // 캘린더 날짜를 눌렀을때 setInput
  const isShow = useRecoilValue(modalShowState.calendarModalShowState);
  const [prevYear, setPrevYear] = useRecoilState(calendarState.prev.year);
  const [prevMonth, setPrevMonth] = useRecoilState(calendarState.prev.month);
  const [currYear, setCurrYear] = useRecoilState(calendarState.current.year);
  const [currMonth, setCurrMonth] = useRecoilState(calendarState.current.month);
  const [nextYear, setNextYear] = useRecoilState(calendarState.next.year);
  const [nextMonth, setNextMonth] = useRecoilState(calendarState.next.month);
  const [afterNextYear, setAfterNextYear] = useRecoilState(
    calendarState.afterNext.year
  );
  const [afterNextMonth, setAfterNextMonth] = useRecoilState(
    calendarState.afterNext.month
  );
  const calendarSize: number = 400;
  const [position, setPosition] = useState(-calendarSize);
  const [transition, setTransition] = useState(true);

  const handlePosition = (symbol: string): void => {
    setPosition((prev) => prev + parseInt(`${symbol}${calendarSize}`));
  };
  const handleTransitionEnd = async () => {
    await setTransition(false);
    await setPosition(-calendarSize);

    if (position > -400) {
      setPrevMonth((prev) => prev - 1);
      setCurrMonth((prev) => prev - 1);
      setNextMonth((prev) => prev - 1);
      setAfterNextMonth((prev) => prev - 1);

      if (prevMonth === 0) {
        setPrevYear((prev) => prev - 1);
        setPrevMonth(11);
      } else if (currMonth === 0) {
        setCurrYear((prev) => prev - 1);
        setCurrMonth(11);
      } else if (nextMonth === 0) {
        setNextYear((prev) => prev - 1);
        setNextMonth(11);
      } else if (afterNextMonth === 0) {
        setAfterNextYear((prev) => prev - 1);
        setAfterNextMonth(11);
      }
    } else {
      setPrevMonth((prev) => prev + 1);
      setCurrMonth((prev) => prev + 1);
      setNextMonth((prev) => prev + 1);
      setAfterNextMonth((prev) => prev + 1);

      if (prevMonth === 11) {
        setPrevYear((prev) => prev + 1);
        setPrevMonth(0);
      } else if (currMonth === 11) {
        setCurrYear((prev) => prev + 1);
        setCurrMonth(0);
      } else if (nextMonth === 11) {
        setNextYear((prev) => prev + 1);
        setNextMonth(0);
      } else if (afterNextMonth === 11) {
        setAfterNextYear((prev) => prev + 1);
        setAfterNextMonth(0);
      }
    }

    setTimeout(() => {
      setTransition(true);
    }, 100);
  };

  return (
    <S.CalendarModalWrapper $isShow={isShow}>
      <S.CalendarModal>
        <S.NextButton
          onClick={() => {
            handlePosition("-");
          }}
        />
        <S.PrevButton
          onClick={() => {
            handlePosition("+");
          }}
        />
        <S.CalendarShowBox>
          <S.CalendarList
            $transition={transition}
            $position={position}
            onTransitionEnd={handleTransitionEnd}
          >
            <CalendarTable year={prevYear} month={prevMonth} />
            <CalendarTable year={currYear} month={currMonth} />
            <CalendarTable year={nextYear} month={nextMonth} />
            <CalendarTable year={afterNextYear} month={afterNextMonth} />
          </S.CalendarList>
        </S.CalendarShowBox>
      </S.CalendarModal>
    </S.CalendarModalWrapper>
  );
};

export default CalendarModal;
