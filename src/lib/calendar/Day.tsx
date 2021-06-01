import React, { Dispatch, useEffect } from "react";
import styled from "styled-components";
import {
  useDatesDispatch,
  useCalendarMethod,
  useDatesState,
  useConstantState,
} from "./CalendarProvider";
import { DatesAction } from "./CalendarReducer";
import { DAYS, MESSAGE } from "../utils/constant";
import { Calendar, ClickTargetType, OnClickDay } from "../utils/types";
import { DayWrapper } from "../utils/styled";

export default function Day({
  year,
  month,
  day,
  firstDay,
  clickTarget,
}: Calendar & {
  clickTarget: ClickTargetType;
}) {
  const { onClickDay, setClickTarget } = useCalendarMethod();
  const { startDate, endDate, nextClickTarget } = useDatesState();
  const { lang } = useConstantState();
  const thisDate = new Date(year, month - 1, day);
  const done = Boolean(startDate && endDate);
  const dispatch = useDatesDispatch();
  const typeOfDay = getTypeOfDay(startDate, endDate, thisDate);

  return (
    <DayWrapper typeOfDay={typeOfDay} done={done}>
      <DayCircle
        onClick={() => {
          const caseType = specifyCase({
            thisDate,
            startDate,
            endDate,
            clickTarget,
          });
          const action = actionByCase({
            dispatch,
            startDate,
            endDate,
            thisDate,
            setClickTarget,
          });
          action({
            caseType,
            onClickDay,
            lang,
            firstDay,
            day,
          });
        }}
      >
        {day}
      </DayCircle>
    </DayWrapper>
  );
}

function getTypeOfDay(
  startDate: Date | null,
  endDate: Date | null,
  thisDate: Date
) {
  if (thisDate < new Date()) {
    return "passed";
  }
  if (startDate && thisDate.getTime() === startDate.getTime()) return "start";
  if (endDate && thisDate.getTime() === endDate.getTime()) return "end";
  if (startDate && endDate && thisDate > startDate && thisDate < endDate)
    return "between";
  return "none";
}

type SpecifyCaseProps = {
  thisDate: Date;
  startDate: Date | null;
  endDate: Date | null;
  clickTarget: ClickTargetType;
};

function specifyCase({
  thisDate,
  startDate,
  endDate,
  clickTarget,
}: SpecifyCaseProps) {
  if (!startDate && !endDate) {
    if (clickTarget === "start") {
      return "CASE_SET_START";
    }
    if (clickTarget === "end") {
      return "CASE_SET_END";
    }
  }
  if (startDate && !endDate) {
    if (thisDate < startDate || clickTarget === "start") {
      return "CASE_SET_START";
    }
    return "CASE_SET_END";
  }
  if (!startDate && endDate) {
    if (thisDate > endDate || clickTarget === "end") {
      return "CASE_SET_END";
    }
    return "CASE_SET_START";
  }
  if (startDate && endDate) {
    if (
      thisDate.getTime() === startDate.getTime() ||
      thisDate.getTime() === endDate.getTime()
    ) {
      return "CASE_CLEAR_BOTH";
    }
    if (thisDate < startDate) {
      return "CASE_SET_START_CLEAR_END";
    } else if (thisDate > endDate) {
      if (clickTarget === "start") {
        return "CASE_SET_START_CLEAR_END";
      } else if (clickTarget === "end") {
        return "CASE_SET_END";
      }
    }
    if (clickTarget === "start") {
      return "CASE_SET_START";
    }
    return "CASE_SET_END";
  }
  throw new Error(MESSAGE.ERROR.NOT_FOUND_CASE);
}

type Case =
  | "CASE_SET_START"
  | "CASE_SET_END"
  | "CASE_SET_START_CLEAR_END"
  | "CASE_CLEAR_BOTH";

type ActionByCaseProps = {
  dispatch: Dispatch<DatesAction>;
  startDate: Date | null;
  endDate: Date | null;
  thisDate: Date;
  setClickTarget: (clickTarget: ClickTargetType) => void;
};

const actionByCase =
  ({
    dispatch,
    startDate,
    endDate,
    thisDate,
    setClickTarget,
  }: ActionByCaseProps) =>
  ({
    caseType,
    onClickDay,
    lang,
    firstDay,
    day,
  }: OnClickDay & {
    caseType: Case;
    lang: string;
    firstDay: number;
    day: number;
  }) => {
    switch (caseType) {
      case "CASE_SET_START":
        dispatch({
          type: caseType,
          startDate: thisDate,
          nextClickTarget: "end",
        });
        setClickTarget("end");
        onClickDay?.({
          clickedType: "start",
          nextClickTarget: "end",
          startDate: convertDate(thisDate),
          endDate: convertDate(endDate),
          startWeek: getWeek(lang, firstDay, day),
          endWeek: getWeek(lang, firstDay, day),
        });
        break;
      case "CASE_SET_END":
        dispatch({
          type: caseType,
          endDate: thisDate,
          nextClickTarget: startDate ? "end" : "start",
        });
        if (!startDate) {
          setClickTarget("start");
          onClickDay?.({
            clickedType: "end",
            nextClickTarget: "start",
            startDate: convertDate(startDate),
            endDate: convertDate(thisDate),
            startWeek: getWeek(lang, firstDay, day),
            endWeek: getWeek(lang, firstDay, day),
          });
          break;
        }
        setClickTarget("end");
        onClickDay?.({
          clickedType: "end",
          nextClickTarget: "end",
          startDate: convertDate(startDate),
          endDate: convertDate(thisDate),
          startWeek: getWeek(lang, firstDay, day),
          endWeek: getWeek(lang, firstDay, day),
        });
        break;
      case "CASE_SET_START_CLEAR_END":
        dispatch({
          type: caseType,
          startDate: thisDate,
          nextClickTarget: "end",
        });
        setClickTarget("end");
        onClickDay?.({
          clickedType: "start",
          nextClickTarget: "end",
          startDate: convertDate(thisDate),
          endDate: null,
          startWeek: getWeek(lang, firstDay, day),
          endWeek: getWeek(lang, firstDay, day),
        });
        break;
      case "CASE_CLEAR_BOTH":
        dispatch({ type: caseType, nextClickTarget: "start" });
        setClickTarget("start");
        onClickDay?.({
          clickedType: "start",
          nextClickTarget: "start",
          startDate: null,
          endDate: null,
          startWeek: getWeek(lang, firstDay, day),
          endWeek: getWeek(lang, firstDay, day),
        });
        break;
      default:
        throw new Error(MESSAGE.ERROR.INVALID_CASE);
    }
  };

function getWeek(lang: string, firstDay: number, day: number): string {
  const i = (firstDay + day - 1) % 7;
  return DAYS[lang][i];
}
function convertDate(date: Date | null) {
  if (!date) return null;
  return {
    year: date.getFullYear(),
    month: date.getMonth() + 1,
    day: date.getDate(),
  };
}
const DayCircle = styled.div`
  position: absolute;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 50%;
`;
