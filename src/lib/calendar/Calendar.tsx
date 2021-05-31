import React, { useState } from "react";
import styled from "styled-components";
import Carousel from "../carousel/Carousel";
import CalendarItem from "./CalendarItem";
import CalendarProvider, { useCalendarState } from "./CalendarProvider";
import {
  OnClickDay,
  _OnClickResult,
  ClickTargetType,
  DateType,
} from "../utils/types";
import { MESSAGE } from "../utils/constant";
import { renderWeeks } from "../utils/renderFn";
import { GlobalStyle } from "../utils/styled";

function calendarContext() {
  let calendarTypeChanger: (type: ClickTargetType) => void;

  type CalendarProps = OnClickDay & {
    start?: DateType;
    end?: DateType;
    countOfMonth: number;
    lang: string;
  };

  function Calendar({
    onClickDay,
    countOfMonth,
    lang,
    start,
    end,
  }: CalendarProps) {
    if (countOfMonth < 1 || countOfMonth > 12) {
      throw new Error(MESSAGE.ERROR.INVALID_RANGE_COUNT_OF_MONTH);
    }

    const [clickTarget, setClickTarget] = useState<ClickTargetType>("start");
    calendarTypeChanger = setClickTarget;

    return (
      <CalendarProvider
        {...{ onClickDay, countOfMonth, setClickTarget, lang, start, end }}
      >
        <GlobalStyle />
        <InnerCalendar
          countOfMonth={countOfMonth}
          lang={lang}
          clickTarget={clickTarget}
        />
      </CalendarProvider>
    );
  }

  Calendar.defaultProps = {
    countOfMonth: 2,
    type: "start",
    lang: "en",
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
      <ControllerWrapper
        onClick={() => {
          if (!calendarTypeChanger) return;
          calendarTypeChanger(clickTarget);
        }}
      >
        {children}
      </ControllerWrapper>
    );
  }

  return { Calendar, Controller };
}

function InnerCalendar({
  countOfMonth,
  clickTarget,
  lang,
}: {
  countOfMonth: number;
  clickTarget: ClickTargetType;
  lang: string;
}) {
  const { calendarList } = useCalendarState();

  return (
    <CalendarWrapper>
      {renderWeeks(lang, countOfMonth)}
      <Carousel>
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
const ControllerWrapper = styled.div`
  /* width: 100%; */
  height: 100%;
`;

const { Calendar, Controller } = calendarContext();

export default Calendar;
export { Controller };
export type OnClickResult = _OnClickResult;
