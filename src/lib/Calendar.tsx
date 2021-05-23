import { useReducer, useState, Dispatch, createContext } from "react";
import Carousel from "./Carousel";
import styled from "styled-components";
import { MESSAGE } from "./constant";
import { HiOutlineChevronLeft, HiOutlineChevronRight } from "react-icons/hi";
import CalendarItem from "./CalendarItem";
import CalendarProvider, { useCalendarState } from "./CalendarProvider";
import { Direction, OnClickResult } from "./type";

// type이 좋을까 interface가 좋을까
// 상속으로 최대한 나누기
// 이 파일에 있어야 할까?
// 관심사를 최대한 줄여나가기.
// 사용자가 OnClickResult를 import해서 사용하도록 API 문서
export default function Calendar({ onClickDay, countOfMonth }: CalendarProps) {
  return (
    <CalendarProvider onClickDay={onClickDay}>
      <_Calendar />
    </CalendarProvider>
  );
}

function _Calendar() {
  const state = useCalendarState();
  const { calendarList } = state;

  const move = (dir: Direction) => {
    switch (dir) {
      case 1:
        return;
      case -1:
        return;
      default:
        throw new Error("사실 발생할 일 없는 에러");
    }
  };

  return (
    <CalendarWrapper>
      <Controller left onClickHandler={move} />
      <div>일 월 화 수 목 금 토 일 월 화 수 목 금 토</div>
      <Carousel>
        {calendarList.map((calendar) => (
          <CalendarItem calendar={calendar} />
        ))}
      </Carousel>
      <Controller right onClickHandler={move} />
    </CalendarWrapper>
  );
}
Calendar.defaultProps = {
  countOfMonth: 2,
};

function Controller({ left, right, onClickHandler }: ControllerProps) {
  const { ERROR } = MESSAGE;

  if (left && right) {
    throw new Error(ERROR.BOTH_DIRECTION);
  }
  if (!left && !right) {
    throw new Error(ERROR.NO_DIRECTION);
  }
  const dir = left ? -1 : 1;

  return (
    <ControllerWraaper>
      <Button onClick={() => onClickHandler(dir)}>
        {left && <HiOutlineChevronLeft />}
        {right && <HiOutlineChevronRight />}
      </Button>
    </ControllerWraaper>
  );
}

type CalendarProps = {
  countOfMonth: number;
  onClickDay: (result: OnClickResult) => void;
};

type ControllerProps = {
  left?: boolean;
  right?: boolean;
  onClickHandler: (dir: Direction) => void;
};

// style

const CalendarWrapper = styled.div``;
const CalendarContainer = styled.div``;
const ControllerWraaper = styled.div``;
const Button = styled.button``;
