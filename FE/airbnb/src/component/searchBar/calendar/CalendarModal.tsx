import React, { useState, useEffect } from "react";
import styled from "styled-components";
import Calendar from "component/searchBar/calendar/Calendar";
import { ReactComponent as LeftButton } from "assets/left_arrow.svg";
import { ReactComponent as RightButton } from "assets/right_arrow.svg";
import { stopPropagation } from "hooks/modalHooks";

function CalendarModal() {
  // 날짜선택 X → 오늘 날짜 기준으로 달력 렌더
  const today = new Date();
  const [year, setYear] = useState<number>(() => today.getFullYear());
  const [month, setMonth] = useState<number>(() => today.getMonth());
  const [translate, setTranslate] = useState<string>("calc(-100% / 3)");
  const [duration, setDuration] = useState<string>("all 400ms");
  const [clickedArrow, setClickedArrow] = useState<string>("");
  // 날짜선택 O → 선택된 체크인 날짜 기준으로 달력 렌더

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

  const theNumOfCalendar = new Array(6).fill(null);
  return (
    <Modal onClick={stopPropagation}>
      <ModalContent>
        <CalendarWrap translateValue={translate} duration={duration} onTransitionEnd={handleTransitionEnd}>
          {theNumOfCalendar.map((_, i) => (
            <Calendar key={year + (month - 2 + i)} year={year} month={month - 2 + i} />
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
  position: absolute;
  top: 100px;
  left: 0;
  box-sizing: border-box;
  width: 916px;
  padding: 60px 80px;
  background-color: #fff;
  border-radius: ${({ theme }) => theme.borderRadius.calendar};

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
  /* overflow: hidden; */
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
