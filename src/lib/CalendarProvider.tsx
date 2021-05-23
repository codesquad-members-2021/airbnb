import React, { createContext, Dispatch, useContext, useReducer } from "react";
import { MESSAGE } from "./constant";
import { Calendar, OnClickDay, OnClickResult } from "./type";

export default function CalendarProvider({
  children,
  onClickDay,
}: CalendarProviderProps) {
  const [state, dispatch] = useReducer(reducer, {
    mode: "wait",
    startDate: null,
    endDate: null,
    calendarList: createCalendarList(),
  });
  return (
    <CalenderStateContext.Provider value={state}>
      <CalenderDispatchContext.Provider value={dispatch}>
        <CalenderMethodContext.Provider value={{ onClickDay }}>
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

const CalenderStateContext = createContext<State | null>(null);
const CalenderDispatchContext = createContext<Dispatch<Action> | null>(null);
const CalenderMethodContext = createContext<Method | null>(null);

function reducer(state: State, action: Action): State {
  switch (action.type) {
    case "MOVE_LEFT":
      return { ...state };
    case "MOVE_RIGHT":
      return { ...state };
    default:
      throw new Error(MESSAGE.ERROR.INVAILD_ACTION);
  }
}

function createCalendarList(): Calendar[] {
  const [year, month] = getCurrentDate();
  return [
    createCalendar(year, month - 1),
    createCalendar(year, month),
    createCalendar(year, month + 1),
    createCalendar(year, month + 2),
  ];
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

function getCurrentDate(): number[] {
  const current = new Date();
  return [current.getFullYear(), current.getMonth()];
}

type CalendarProviderProps = OnClickDay & {
  children: React.ReactNode;
};

type State = {
  mode: string;
  startDate: string | null;
  endDate: string | null;
  calendarList: Calendar[];
};

type Action = { type: "MOVE_LEFT" } | { type: "MOVE_RIGHT" };
type Method = OnClickDay & {};
