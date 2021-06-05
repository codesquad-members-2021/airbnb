import { useState, useEffect } from "react";
import styled from "styled-components";
import { useRecoilValue, useSetRecoilState } from "recoil";
import { checkoutDateState, hoverDateState } from "state/atoms/calendarAtoms";
import Calendar from "component/searchBar/calendar/Calendar";
import { ReactComponent as LeftButton } from "assets/left_arrow.svg";
import { ReactComponent as RightButton } from "assets/right_arrow.svg";
import { stopPropagation } from "component/searchBar/modalFunctions";
import { getTodayText } from "component/searchBar/calendar/getCalendarData";

const CAROUSEL = {
  TRANSITION: "all 400ms",
  TRANSLATE_DEFAULT: "calc(-100% / 3)",
  TRANSLATE_LEFT: "17px",
  TRANSLATE_RIGHT: "calc(-100% * 2 / 3 - 17px)",
  NUM_CALENDAR: 2,
  LAST_MONTH: 12,
};

function CalendarModal() {
  const { TRANSITION, TRANSLATE_DEFAULT, TRANSLATE_LEFT, TRANSLATE_RIGHT, NUM_CALENDAR, LAST_MONTH } = CAROUSEL;
  const [year, setYear] = useState(() => new Date().getFullYear());
  const [month, setMonth] = useState(() => new Date().getMonth());
  const [translate, setTranslate] = useState(TRANSLATE_DEFAULT);
  const [duration, setDuration] = useState(TRANSITION);
  const [clickedArrow, setClickedArrow] = useState("");
  const checkoutDate = useRecoilValue(checkoutDateState);
  const setHoverDate = useSetRecoilState(hoverDateState);

  // ===== 달력 캐로셀 기능 =====
  const handleClickLeftBtn = (): void => {
    setTranslate(TRANSLATE_LEFT);
    setClickedArrow("left");
  };

  const handleClickRightBtn = (): void => {
    setTranslate(TRANSLATE_RIGHT);
    setClickedArrow("right");
  };

  const handleTransitionEnd = (): void => {
    const lastMonthOfCarousel = LAST_MONTH - NUM_CALENDAR;
    if (clickedArrow === "right") {
      if (month < lastMonthOfCarousel) setMonth(month + NUM_CALENDAR);
      else {
        setYear(year + 1);
        setMonth(month - lastMonthOfCarousel);
      }
    }
    if (clickedArrow === "left") {
      if (month > NUM_CALENDAR - 1) setMonth(month - NUM_CALENDAR);
      else {
        setYear(year - 1);
        setMonth(month + lastMonthOfCarousel);
      }
    }
    setDuration("none");
    setTranslate(TRANSLATE_DEFAULT);
  };

  useEffect((): void => {
    setDuration(TRANSITION);
  }, [duration]);

  const todayText = getTodayText();
  const theNumOfCalendar = new Array(NUM_CALENDAR * 3).fill(null);
  const handleMouseLeaveCalendar = (): void => {
    if (checkoutDate !== "날짜 입력") return;
    setHoverDate("");
  };

  return (
    <Modal onClick={stopPropagation}>
      <ModalContent onMouseLeave={handleMouseLeaveCalendar}>
        <CalendarWrap translateValue={translate} duration={duration} onTransitionEnd={handleTransitionEnd}>
          {theNumOfCalendar.map((_, i) => (
            <Calendar
              key={year + (month - NUM_CALENDAR + i)}
              year={year}
              month={month - NUM_CALENDAR + i}
              today={todayText}
            />
          ))}
        </CalendarWrap>
      </ModalContent>
      <LeftButton className="arrow left" onClick={handleClickLeftBtn} />
      <RightButton className="arrow right" onClick={handleClickRightBtn} />
    </Modal>
  );
}

export default CalendarModal;

const Modal = styled.div`
  ${({ theme }) => theme.modal}
  border: 1px solid #eee;
  left: 50%;
  transform: translateX(-50%);
  width: 916px;
  padding: 60px 80px;

  .arrow {
    position: absolute;
    top: 58px;
    cursor: pointer;
    path {
      stroke: ${({ theme }) => theme.color.gray4};
    }
    &:hover {
      path {
        stroke: ${({ theme }) => theme.color.black};
      }
    }
  }
  .left {
    left: 90px;
  }
  .right {
    right: 90px;
  }
`;

const ModalContent = styled.div`
  width: 100%;
  overflow: hidden;
`;

interface CalendarWrapProps {
  translateValue: string;
  duration: string;
}

const CalendarWrap = styled.div<CalendarWrapProps>`
  width: 300%;
  transform: ${({ translateValue }) => `translateX(${translateValue})`};
  transition: ${({ duration }) => duration};
  display: flex;
  justify-content: space-between;
`;
