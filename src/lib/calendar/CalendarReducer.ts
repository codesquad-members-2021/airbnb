import { Calendar, CurrentDay } from "../utils/types";
import { MESSAGE } from "../utils/constant";

export type DatesState = {
  startDate: Date | null;
  endDate: Date | null;
};

export type DatesAction =
  | { type: "CASE_SET_START"; startDate: Date | null }
  | { type: "CASE_SET_END"; endDate: Date | null }
  | { type: "CASE_SET_START_CLEAR_END"; startDate: Date | null }
  | { type: "CASE_CLEAR_BOTH" };

export function datesReducer(
  state: DatesState,
  action: DatesAction
): DatesState {
  switch (action.type) {
    case "CASE_SET_START":
      return { ...state, startDate: action.startDate };
    case "CASE_SET_END":
      return { ...state, endDate: action.endDate };
    case "CASE_SET_START_CLEAR_END":
      return { startDate: action.startDate, endDate: null };
    case "CASE_CLEAR_BOTH":
      return { startDate: null, endDate: null };
    default:
      throw new Error(MESSAGE.ERROR.INVALID_ACTION);
  }
}

export type CalendarState = {
  countOfMonth: number;
  currentDay: CurrentDay;
  calendarList: Calendar[];
};

export type CalendarAction = { type: "MOVE_LEFT" } | { type: "MOVE_RIGHT" };

export function calendarReducer(
  state: CalendarState,
  action: CalendarAction
): CalendarState {
  const { countOfMonth, calendarList, currentDay } = state;
  const { year, month } = currentDay;
  const newCalendarList = calendarList.slice();

  switch (action.type) {
    case "MOVE_LEFT":
      newCalendarList.pop();
      newCalendarList.unshift(createCalendar(year, month - 2));

      return {
        ...state,
        calendarList: newCalendarList,
        currentDay: getDate(year, month - 1),
      };
    case "MOVE_RIGHT":
      newCalendarList.shift();
      newCalendarList.push(createCalendar(year, month + countOfMonth + 1));

      return {
        ...state,
        calendarList: newCalendarList,
        currentDay: getDate(year, month + 1),
      };
  }
}

function getDate(year: number, month: number) {
  const date = new Date(year, month);
  return { year: date.getFullYear(), month: date.getMonth() };
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
