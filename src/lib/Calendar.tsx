import Carousel from "./Carousel";
import styled from "styled-components";
import { MESSAGE } from "./constant";
import CalendarItem from "./CalendarItem";
import CalendarProvider, { useCalendarState } from "./CalendarProvider";
import { OnClickDay, _OnClickResult, Type } from "./type";
import { useState } from "react";

export type TypeA = Type;
export type OnClickResult = _OnClickResult;

function calendarContext() {
  type CalendarProps = OnClickDay & {
    countOfMonth: number;
  };

  let calendarTypeChanger: (type: Type) => void;

  function Calendar({ onClickDay, countOfMonth }: CalendarProps) {
    if (countOfMonth < 1 || countOfMonth > 12) {
      throw new Error(MESSAGE.ERROR.INVAILD_RANGE_COUNT_OF_MONTH);
    }
    const [type, setType] = useState<Type>("start");
    calendarTypeChanger = setType;

    return (
      <CalendarProvider
        onClickDay={onClickDay}
        countOfMonth={countOfMonth}
        setType={setType}
      >
        <_Calendar countOfMonth={countOfMonth} type={type} />
      </CalendarProvider>
    );
  }

  Calendar.defaultProps = {
    countOfMonth: 2,
    type: "start",
  };

  function _Calendar({
    countOfMonth,
    type,
  }: {
    countOfMonth: number;
    type: Type;
  }) {
    const { calendarList } = useCalendarState();

    return (
      <CalendarWrapper>
        {renderWeeks(countOfMonth)}
        <Carousel countOfItemToShow={countOfMonth}>
          {calendarList.map((calendar) => (
            <CalendarItem {...calendar} type={type} />
          ))}
        </Carousel>
      </CalendarWrapper>
    );
  }
  type ControllerProps = {
    start?: boolean;
    end?: boolean;
    children: React.ReactNode;
  };
  function Controller({ start, end, children }: ControllerProps) {
    if (start && end) {
      throw new Error(MESSAGE.ERROR.BOTH_TYPE);
    }
    if (!start && !end) {
      throw new Error(MESSAGE.ERROR.NO_TYPE);
    }
    let type: Type;
    if (start) {
      type = "start";
    } else if (end) {
      type = "end";
    }

    return <div onClick={() => calendarTypeChanger(type)}>{children}</div>;
  }

  return { Calendar, Controller };
}

const renderWeeks = (count: number) => {
  return (
    <WeeksContainer>
      {Array(count)
        .fill(null)
        .map((el) => (
          <Weeks count={count}>
            <li>일</li>
            <li>월</li>
            <li>화</li>
            <li>수</li>
            <li>목</li>
            <li>금</li>
            <li>토</li>
          </Weeks>
        ))}
    </WeeksContainer>
  );
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
const Weeks = styled.ul<{ count: number }>`
  width: ${({ count }) => `calc(100% / ${count})`};
  padding: 0 2rem;
  display: flex;
  justify-content: space-around;
`;

const { Calendar, Controller } = calendarContext();

export default Calendar;
export { Controller };
