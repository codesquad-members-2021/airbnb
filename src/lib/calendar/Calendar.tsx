import Carousel from "../carousel/Carousel";
import styled from "styled-components";
import { MESSAGE } from "../utils/constant";
import CalendarItem from "./CalendarItem";
import CalendarProvider, { useCalendarState } from "./CalendarProvider";
import { OnClickDay, _OnClickResult, ClickTargetType } from "../utils/types";
import { useState } from "react";
import { renderWeeks } from "../utils/renderFn";

function calendarContext() {
  let calendarTypeChanger: (type: ClickTargetType) => void;

  type CalendarProps = OnClickDay & {
    countOfMonth: number;
  };

  function Calendar({ onClickDay, countOfMonth }: CalendarProps) {
    if (countOfMonth < 1 || countOfMonth > 12) {
      throw new Error(MESSAGE.ERROR.INVALID_RANGE_COUNT_OF_MONTH);
    }

    const [clickTarget, setClickTarget] = useState<ClickTargetType>("start");
    calendarTypeChanger = setClickTarget;

    return (
      <CalendarProvider
        onClickDay={onClickDay}
        countOfMonth={countOfMonth}
        setClickTarget={setClickTarget}
      >
        <InnerCalendar countOfMonth={countOfMonth} clickTarget={clickTarget} />
      </CalendarProvider>
    );
  }

  Calendar.defaultProps = {
    countOfMonth: 2,
    type: "start",
  };

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

    let clickTarget: ClickTargetType;
    if (start) {
      clickTarget = "start";
    } else if (end) {
      clickTarget = "end";
    }

    return (
      <div
        onClick={() => {
          calendarTypeChanger(clickTarget);
        }}
      >
        {children}
      </div>
    );
  }

  return { Calendar, Controller };
}

function InnerCalendar({
  countOfMonth,
  clickTarget,
}: {
  countOfMonth: number;
  clickTarget: ClickTargetType;
}) {
  const { calendarList } = useCalendarState();

  return (
    <CalendarWrapper>
      {renderWeeks(countOfMonth)}
      <Carousel countOfItemToShow={countOfMonth}>
        {calendarList.map((calendar) => (
          <CalendarItem {...calendar} clickTarget={clickTarget} />
        ))}
      </Carousel>
    </CalendarWrapper>
  );
}
// style
const CalendarWrapper = styled.div`
  position: relative;
`;

const { Calendar, Controller } = calendarContext();

export default Calendar;
export { Controller };
export type OnClickResult = _OnClickResult;
