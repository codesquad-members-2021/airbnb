import Carousel from "./Carousel";
import styled from "styled-components";
import { MESSAGE } from "./constant";
import CalendarItem from "./CalendarItem";
import CalendarProvider, { useCalendarState } from "./CalendarProvider";
import { Direction, OnClickDay, _OnClickResult } from "./type";

// type이 좋을까 interface가 좋을까
// 상속으로 최대한 나누기
// 이 파일에 있어야 할까?
// 관심사를 최대한 줄여나가기.
// 사용자가 OnClickResult를 import해서 사용하도록 API 문서

export default function Calendar({ onClickDay, countOfMonth }: CalendarProps) {
  if (countOfMonth < 1 || countOfMonth > 12) {
    throw new Error(MESSAGE.ERROR.INVAILD_RANGE_COUNT_OF_MONTH);
  }
  return (
    <CalendarProvider onClickDay={onClickDay} countOfMonth={countOfMonth}>
      <_Calendar countOfMonth={countOfMonth} />
    </CalendarProvider>
  );
}

export type OnClickResult = _OnClickResult;

function _Calendar({ countOfMonth }: { countOfMonth: number }) {
  const state = useCalendarState();
  const { calendarList } = state;

  const onClickMove = (direction: Direction) => {
    // 요소 변경
  };
  return (
    <CalendarWrapper>
      <WeeksContainer>
        <Weeks>
          <li>일</li>
          <li>월</li>
          <li>화</li>
          <li>수</li>
          <li>목</li>
          <li>금</li>
          <li>토</li>
        </Weeks>
        <Weeks>
          <li>일</li>
          <li>월</li>
          <li>화</li>
          <li>수</li>
          <li>목</li>
          <li>금</li>
          <li>토</li>
        </Weeks>
      </WeeksContainer>
      <Carousel countOfItemToShow={countOfMonth} onClickHandler={onClickMove}>
        {calendarList.map((calendar) => (
          <CalendarItem {...calendar} />
        ))}
      </Carousel>
    </CalendarWrapper>
  );
}
Calendar.defaultProps = {
  countOfMonth: 2,
};

type CalendarProps = OnClickDay & {
  countOfMonth: number;
};

// style
const CalendarWrapper = styled.div`
  position: relative;
`;

const WeeksContainer = styled.div`
  position: absolute;
  top: 1.5rem;
  width: 100%;
  display: flex;
  justify-content: space-around;
`;
const Weeks = styled.ul`
  width: 50%;
  padding: 0 2rem;
  display: flex;
  justify-content: space-around;
`;
