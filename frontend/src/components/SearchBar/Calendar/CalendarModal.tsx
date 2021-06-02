import { useState } from "react";
import { useRecoilValue, useSetRecoilState, useRecoilState } from "recoil";
import { calendarModalState } from "recoil/Atoms";
import * as S from "components/SearchBar/Calendar/CalendarStyles";
import MonthlyCalendar from "components/SearchBar/Calendar/MonthlyCalendar";

const CalendarModal = () => {
  const monthTypes: string[] = [
    "PREVIOUS",
    "CURRENT",
    "NEXT",
    "MONTH_AFTER_NEXT",
  ];
  const [currentMonth, setCurrentMonth] = useRecoilState(calendarModalState);
  const { year } = currentMonth;
  const [locationX, setLocationX] = useState(-25);
  const [direction, setDirection] = useState("");
  const [transitionFlag, setTransitionFlag] = useState(false);

  const moveCalendarContainer = (dir: string) => {
    if (dir === "R") {
      setDirection("R");
      setLocationX(-50);
    } else {
      setDirection("L");
      setLocationX(0);
    }
    setTransitionFlag(true);
  };

  const updateCalendar = () => {
    if (direction === "R") {
      setLocationX(-25);
      if (transitionFlag) {
        setCurrentMonth({
          ...currentMonth,
          year: new Date(year, currentMonth.month + 1).getFullYear(),
          month: new Date(year, currentMonth.month + 1).getMonth(),
        });
      }
      setTransitionFlag(false);
    } else {
      setLocationX(-25);

      if (transitionFlag) {
        setCurrentMonth({
          ...currentMonth,
          year: new Date(year, currentMonth.month - 1).getFullYear(),
          month: new Date(year, currentMonth.month - 1).getMonth(),
        });
      }
      setTransitionFlag(false);
    }
  };

  return (
    <S.CalendarModalLayout>
      <S.CalendarSelector>
        <div>
          <button>달력</button>
          <button>자유로운 일정</button>
        </div>
      </S.CalendarSelector>
      <S.LeftArrowBtn onClick={() => moveCalendarContainer("L")}>
        <S.RiArrowLeftSLine />
      </S.LeftArrowBtn>
      <S.RightArrowBtn onClick={() => moveCalendarContainer("R")}>
        <S.RiArrowRightSLine />
      </S.RightArrowBtn>
      <S.MonthlyCalendarContainer
        _translate={locationX}
        flag={transitionFlag}
        onTransitionEnd={updateCalendar}
      >
        {monthTypes.map((_, idx) => (
          <MonthlyCalendar key={monthTypes[idx]} monthType={monthTypes[idx]} />
        ))}
      </S.MonthlyCalendarContainer>
    </S.CalendarModalLayout>
  );
};

export default CalendarModal;
