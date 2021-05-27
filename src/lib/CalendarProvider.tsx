import React, { createContext, Dispatch, useContext, useReducer } from "react";
import { MESSAGE } from "./constant";
import { Calendar, OnClickDay, Type } from "./type";

type CalendarProviderProps = OnClickDay & {
  children: React.ReactNode;
  countOfMonth: number;
  setType: (type: Type) => void;
};

type CalendarState = {
  mode: string;
  startDate: Date | null;
  endDate: Date | null;
  currentDay: CurrentDay;
  calendarList: Calendar[];
  countOfMonth: number;
};

export default function CalendarProvider({
  children,
  onClickDay,
  countOfMonth,
  setType,
}: CalendarProviderProps) {
  const [state, dispatch] = useReducer(reducer, {
    mode: "wait",
    startDate: null,
    endDate: null,
    countOfMonth,
    currentDay: getCurrentDate(),
    calendarList: createCalendarList(countOfMonth),
  });

  return (
    <CalenderStateContext.Provider value={state}>
      <CalenderDispatchContext.Provider value={dispatch}>
        <CalenderMethodContext.Provider value={{ onClickDay, setType }}>
          {children}
        </CalenderMethodContext.Provider>
      </CalenderDispatchContext.Provider>
    </CalenderStateContext.Provider>
  );
}

export function useCalendarState() {
  const state = useContext(CalenderStateContext);
  if (!state) throw new Error(MESSAGE.ERROR.INVAILD_PROVIDER);
  return state;
}

export function useCalendarDispatch() {
  const dispatch = useContext(CalenderDispatchContext);
  if (!dispatch) throw new Error(MESSAGE.ERROR.INVAILD_PROVIDER);
  return dispatch;
}
export function useCalendarMethod() {
  const method = useContext(CalenderMethodContext);
  if (!method) throw new Error(MESSAGE.ERROR.INVAILD_PROVIDER);
  return method;
}

const CalenderStateContext = createContext<CalendarState | null>(null);
const CalenderDispatchContext = createContext<Dispatch<Action> | null>(null);
const CalenderMethodContext = createContext<Method | null>(null);

export type Action =
  | { type: "MOVE_LEFT" }
  | { type: "MOVE_RIGHT" }
  | { type: "CASE_SET_START"; startDate: Date | null }
  | { type: "CASE_SET_END"; endDate: Date | null }
  | { type: "CASE_SET_START_CLEAR_END"; startDate: Date | null }
  | { type: "CASE_CLEAR_BOTH" };

function reducer(state: CalendarState, action: Action): CalendarState {
  const { calendarList, currentDay, countOfMonth } = state;
  const { year, month } = currentDay;
  const newCalendarList = calendarList.slice();
  const newCurrentDay = { year: 0, month: 0 };

  switch (action.type) {
    case "CASE_SET_START":
      return { ...state, startDate: action.startDate };
    case "CASE_SET_END":
      return { ...state, endDate: action.endDate };
    case "CASE_SET_START_CLEAR_END":
      return { ...state, startDate: action.startDate, endDate: null };
    case "CASE_CLEAR_BOTH":
      return { ...state, startDate: null, endDate: null };
    case "MOVE_LEFT":
      newCalendarList.pop();
      newCalendarList.unshift(createCalendar(year, month - 2));

      const prevDate = new Date(year, month - 1);
      newCurrentDay.year = prevDate.getFullYear();
      newCurrentDay.month = prevDate.getMonth();

      return {
        ...state,
        calendarList: newCalendarList,
        currentDay: newCurrentDay,
      };
    case "MOVE_RIGHT":
      newCalendarList.shift();
      newCalendarList.push(createCalendar(year, month + countOfMonth + 1));

      const nextDate = new Date(year, month + 1);
      newCurrentDay.year = nextDate.getFullYear();
      newCurrentDay.month = nextDate.getMonth();

      return {
        ...state,
        calendarList: newCalendarList,
        currentDay: newCurrentDay,
      };
    default:
      throw new Error(MESSAGE.ERROR.INVAILD_ACTION);
  }
}

function createCalendarList(countOfMonth: number): Calendar[] {
  const { year, month } = getCurrentDate();
  const result = [];
  for (let i = -1; i <= countOfMonth; i++) {
    result.push(createCalendar(year, month + i));
  }
  return result;
}

function createCalendar(year: number, month: number): Calendar {
  const date = new Date(year, month + 1, 0);
  const firstDay = new Date(year, month, 1);
  return {
    year: date.getFullYear(),
    month: date.getMonth() + 1,
    day: date.getDate(),
    firstDay: firstDay.getDay(),
  };
}

function getCurrentDate(): CurrentDay {
  const current = new Date();
  return { year: current.getFullYear(), month: current.getMonth() };
}

type CurrentDay = {
  year: number;
  month: number;
};

type Method = OnClickDay & {
  setType: (type: Type) => void;
};
