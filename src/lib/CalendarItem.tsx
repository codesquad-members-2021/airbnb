import { Dispatch } from "react";
import styled, { css } from "styled-components";
import {
  useCalendarDispatch,
  useCalendarMethod,
  useCalendarState,
  Action,
} from "./CalendarProvider";
import { DAYS } from "./constant";
import { Calendar, Type } from "./type";

export default function CalendarItem({
  year,
  month,
  day,
  firstDay,
  type,
}: Calendar & {
  type: Type;
}) {
  const empty = createEmpty(firstDay);
  const days = createDays(day);

  return (
    <CalendarItemWrapper>
      <CalendarItemYearMonth>
        {year}년 {month}월
      </CalendarItemYearMonth>
      <CalendarItemDays>
        {empty.map((el) => (
          <DayWrapper typeOfDay="none" />
        ))}
        {days.map((day) => (
          <Day {...{ year, month, day, firstDay, type }} />
        ))}
      </CalendarItemDays>
    </CalendarItemWrapper>
  );
}

function createDays(day: number): number[] {
  const days = Array.from({ length: day }, (_, i) => i + 1);
  return days;
}

function createEmpty(firstDay: number): string[] {
  const empty = Array.from({ length: firstDay }, () => " ");
  return empty;
}

function getTypeOfDay(
  startDate: Date | null,
  endDate: Date | null,
  thisDate: Date
) {
  if (startDate && thisDate.getTime() === startDate.getTime()) return "start";
  if (endDate && thisDate.getTime() === endDate.getTime()) return "end";
  if (startDate && endDate && thisDate > startDate && thisDate < endDate)
    return "between";
  return "none";
}

function Day({
  year,
  month,
  day,
  firstDay,
  type,
}: Calendar & {
  type: Type;
}) {
  const { onClickDay, setType } = useCalendarMethod();
  const { startDate, endDate } = useCalendarState();
  const thisDate = new Date(year, month, day);
  const done = Boolean(startDate && endDate);
  const dispatch = useCalendarDispatch();

  const TypeOfDay = getTypeOfDay(startDate, endDate, thisDate);

  return (
    <DayWrapper typeOfDay={TypeOfDay} done={done}>
      <DayCircle
        onClick={() => {
          const result = {
            year,
            month,
            day,
            week: getWeek(firstDay, day),
            type,
          };
          const caseType = specifyCase({ thisDate, startDate, endDate, type });
          const action = actionByCase({
            dispatch,
            startDate,
            endDate,
            thisDate,
            setType,
          });
          action(caseType);
          if (!onClickDay) return;
          onClickDay(result);
        }}
      >
        {day}
      </DayCircle>
    </DayWrapper>
  );
}

type SpecifyCaseProps = {
  thisDate: Date;
  startDate: Date | null;
  endDate: Date | null;
  type: Type;
};

function specifyCase({ thisDate, startDate, endDate, type }: SpecifyCaseProps) {
  if (!startDate && !endDate) {
    if (type === "start") {
      return "CASE_SET_START";
    } else if (type === "end") {
      return "CASE_SET_END";
    }
  }
  if (startDate && !endDate) {
    if (thisDate < startDate || type === "start") {
      return "CASE_SET_START";
    }
    return "CASE_SET_END";
  }
  if (!startDate && endDate) {
    if (thisDate > endDate || type === "end") {
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
      if (type === "start") {
        return "CASE_SET_START_CLEAR_END";
      } else if (type === "end") {
        return "CASE_SET_END";
      }
    }
    return "CASE_SET_END";
  }
}

type Case =
  | "CASE_SET_START"
  | "CASE_SET_END"
  | "CASE_SET_START_CLEAR_END"
  | "CASE_CLEAR_BOTH"
  | undefined;

type ActionByCaseProps = {
  dispatch: Dispatch<Action>;
  startDate: Date | null;
  endDate: Date | null;
  thisDate: Date;
  setType: (type: Type) => void;
};
const actionByCase =
  ({ dispatch, startDate, endDate, thisDate, setType }: ActionByCaseProps) =>
  (caseType: Case) => {
    if (caseType === "CASE_SET_START") {
      dispatch({ type: caseType, startDate: thisDate });
      setType("end");
      return;
    }
    if (caseType === "CASE_SET_END") {
      dispatch({ type: caseType, endDate: thisDate });
      if (!startDate) {
        setType("start");
      }
      setType("end");
      return;
    }
    if (caseType === "CASE_SET_START_CLEAR_END") {
      dispatch({ type: caseType, startDate: thisDate });
      setType("end");
      return;
    }
    if (caseType === "CASE_CLEAR_BOTH") {
      dispatch({ type: caseType });
      setType("start");
      return;
    }
  };

// function getSelectState(start: Date | null, end: Date | null) {
//   if (!start && !end) {
//     return "WAITING";
//   }
//   if (start && !end) {
//     return "SELECTED_START";
//   }
//   if (!start && end) {
//     return "SELECTED_END";
//   }
//   return "SELECTED_BOTH";
// }

function getWeek(firstDay: number, day: number): string {
  const i = (firstDay + day - 1) % 7;
  return DAYS[i];
}

const CalendarItemWrapper = styled.ul``;
const CalendarItemYearMonth = styled.div`
  text-align: center;
  margin-bottom: 2.5rem;
`;
const CalendarItemDays = styled.ul`
  box-sizing: border-box;
  width: 100%;
  padding: 0 2rem;
  display: flex;
  flex-wrap: wrap;
`;
const DayWrapper = styled.li<{ typeOfDay: string; done?: boolean }>`
  ${({ typeOfDay, done }) => {
    if (typeOfDay === "start") {
      return css`
        & > div {
          background: black;
          color: white;
        }
        ${done &&
        css`
          background: linear-gradient(270deg, silver 50%, #fff 50%);
        `}
      `;
    } else if (typeOfDay === "end") {
      return css`
        & > div {
          background: black;
          color: white;
        }
        ${done &&
        css`
          background: linear-gradient(90deg, silver 50%, #fff 50%);
        `}
      `;
    } else if (typeOfDay === "between") {
      return css`
        background: silver;
      `;
    }
  }}
  position: relative;
  width: calc(100% / 7);
  &:after {
    content: "";
    display: block;
    padding-bottom: 100%;
  }
`;

const DayCircle = styled.div`
  position: absolute;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  border-radius: 50%;
  &:hover {
    box-sizing: border-box;
    border: 1px solid black;
  }
`;
