import { useState, useEffect } from "react";
import styled from "styled-components";
import { useRecoilValue, useSetRecoilState } from "recoil";
import { checkoutDateState, hoverDateState } from "state/atoms/calendarAtoms";
import Calendar from "component/searchBar/calendar/Calendar";
import { ReactComponent as LeftButton } from "assets/left_arrow.svg";
import { ReactComponent as RightButton } from "assets/right_arrow.svg";
import { stopPropagation } from "hooks/modalHooks";

function CalendarModal() {
  const [year, setYear] = useState<number>(() => new Date().getFullYear());
  const [month, setMonth] = useState<number>(() => new Date().getMonth());
  const [translate, setTranslate] = useState<string>("calc(-100% / 3)");
  const [duration, setDuration] = useState<string>("all 400ms");
  const [clickedArrow, setClickedArrow] = useState<string>("");
  const checkoutDate = useRecoilValue(checkoutDateState);
  const setHoverDate = useSetRecoilState(hoverDateState);
  // 날짜선택 X → 오늘 날짜 기준으로 달력 렌더
  // 날짜선택 O → 선택된 체크인 날짜 기준으로 달력 렌더

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

  // =====오늘 날짜 구하기=====
  const today = new Date();
  const [todayMonth, todayDate] = [today.getMonth(), today.getDate()];
  const yearStr = `${today.getFullYear()}`;
  const monthStr = todayMonth < 9 ? `0${todayMonth + 1}` : `${todayMonth + 1}`;
  const dateStr = todayDate < 10 ? `0${todayDate}` : `${todayDate}`;
  const todayText = yearStr + monthStr + dateStr;

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
  left: 0;
  /* width: 916px; */
  width: 100%;
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
