import { useState, useEffect } from "react";
import styled from "styled-components";
import { useRecoilValue, useSetRecoilState } from "recoil";
import { checkoutDateState, hoverDateState } from "state/atoms/calendarAtoms";
import Calendar from "component/searchBar/calendar/Calendar";
import { ReactComponent as LeftButton } from "assets/left_arrow.svg";
import { ReactComponent as RightButton } from "assets/right_arrow.svg";
import { stopPropagation } from "component/searchBar/modalFunctions";
import { getTodayText } from "component/searchBar/calendar/getCalendarData";

function CalendarModal() {
  const [year, setYear] = useState(() => new Date().getFullYear());
  const [month, setMonth] = useState(() => new Date().getMonth());
  const [translate, setTranslate] = useState("calc(-100% / 3)");
  const [duration, setDuration] = useState("all 400ms");
  const [clickedArrow, setClickedArrow] = useState("");
  const checkoutDate = useRecoilValue(checkoutDateState);
  const setHoverDate = useSetRecoilState(hoverDateState);

  // ===== 달력 캐로셀 기능 =====
  const handleClickLeftBtn = (): void => {
    setTranslate("17px");
    setClickedArrow("left");
  };

  const handleClickRightBtn = (): void => {
    setTranslate("calc(-200% / 3 - 17px)");
    setClickedArrow("right");
  };

  const handleTransitionEnd = (): void => {
    if (clickedArrow === "right") {
      if (month < 10) setMonth(month + 2);
      else {
        setYear(year + 1);
        setMonth(month - 10);
      }
    }
    if (clickedArrow === "left") {
      if (month > 1) setMonth(month - 2);
      else {
        setYear(year - 1);
        setMonth(month + 10);
      }
    }
    setDuration("none");
    setTranslate("calc(-100% / 3)");
  };

  useEffect((): void => {
    setDuration("all 400ms");
  }, [duration]);

  const todayText = getTodayText();
  const theNumOfCalendar = new Array(6).fill(null);
  const handleMouseLeaveCalendar = (): void => {
    if (checkoutDate !== "날짜 입력") return;
    setHoverDate("");
  };

  return (
    <Modal onClick={stopPropagation}>
      <ModalContent onMouseLeave={handleMouseLeaveCalendar}>
        <CalendarWrap translateValue={translate} duration={duration} onTransitionEnd={handleTransitionEnd}>
          {theNumOfCalendar.map((_, i) => (
            <Calendar key={year + (month - 2 + i)} year={year} month={month - 2 + i} today={todayText} />
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
