import React, {
  createContext,
  Dispatch,
  useContext,
  useMemo,
  useReducer,
} from "react";
import { MESSAGE } from "../utils/constant";
import {
  Calendar,
  CurrentDay,
  OnClickDay,
  ClickTargetType,
  DateType,
} from "../utils/types";
import {
  calendarReducer,
  datesReducer,
  DatesState,
  DatesAction,
  CalendarState,
  CalendarAction,
} from "./CalendarReducer";

type CalendarProviderProps = OnClickDay & {
  children: React.ReactNode;
  countOfMonth: number;
  setClickTarget: (clickTarget: ClickTargetType) => void;
  lang: string;
  start?: DateType;
  end?: DateType;
};

const TODAY = getCurrentDate();

export default function CalendarProvider({
  children,
  onClickDay,
  countOfMonth,
  setClickTarget,
  lang,
  start,
  end,
}: CalendarProviderProps) {
  const [dates, datesDispatch] = useReducer(datesReducer, {
    startDate: start ? new Date(start.year, start.month - 1, start.day) : null,
    endDate: end ? new Date(end.year, end.month - 1, end.day) : null,
    nextClickTarget: "start",
  });

  const [calendar, calendarDispatch] = useReducer(calendarReducer, {
    countOfMonth,
    currentDay: TODAY,
    calendarList: useMemo(() => createCalendarList(countOfMonth, TODAY), []),
  });

  const constant = {
    lang: lang,
    countOfMonth,
  };

  return (
    <StateContext.Provider value={{ dates, calendar, constant }}>
      <DispatchContext.Provider value={{ datesDispatch, calendarDispatch }}>
        <MethodContext.Provider value={{ onClickDay, setClickTarget }}>
          {children}
        </MethodContext.Provider>
      </DispatchContext.Provider>
    </StateContext.Provider>
  );
}

export function useCalendarState() {
  const state = useContext(StateContext);
  if (!state) throw new Error(MESSAGE.ERROR.INVALID_PROVIDER);
  return state.calendar;
}
export function useDatesState() {
  const state = useContext(StateContext);
  if (!state) throw new Error(MESSAGE.ERROR.INVALID_PROVIDER);
  return state.dates;
}
export function useConstantState() {
  const state = useContext(StateContext);
  if (!state) throw new Error(MESSAGE.ERROR.INVALID_PROVIDER);
  return state.constant;
}
export function useDatesDispatch() {
  const dispatch = useContext(DispatchContext);
  if (!dispatch) throw new Error(MESSAGE.ERROR.INVALID_PROVIDER);
  return dispatch.datesDispatch;
}
export function useCalendarDispatch() {
  const dispatch = useContext(DispatchContext);
  if (!dispatch) throw new Error(MESSAGE.ERROR.INVALID_PROVIDER);
  return dispatch.calendarDispatch;
}
export function useCalendarMethod() {
  const method = useContext(MethodContext);
  if (!method) throw new Error(MESSAGE.ERROR.INVALID_PROVIDER);
  return method;
}

type State = {
  dates: DatesState;
  calendar: CalendarState;
  constant: { countOfMonth: number; lang: string };
};
const StateContext = createContext<State | null>(null);

type Dispatches = {
  datesDispatch: Dispatch<DatesAction>;
  calendarDispatch: Dispatch<CalendarAction>;
};
const DispatchContext = createContext<Dispatches | null>(null);

type Method = OnClickDay & {
  setClickTarget: (clickTarget: ClickTargetType) => void;
};
const MethodContext = createContext<Method | null>(null);

function createCalendarList(
  countOfMonth: number,
  today: CurrentDay
): Calendar[] {
  const { year, month } = today;
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
