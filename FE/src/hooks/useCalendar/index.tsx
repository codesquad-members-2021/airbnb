import { useReducer } from 'react';
import {
  createMonthStartFromFirstDay,
  createDates,
  createYearMonthText,
} from './calendar';

interface ICalendarState {
  arrDates: number[];
  arrDays: string[];
  strYearMonth: string;
  monthDate: Date;
  nMouthOption: number;
}

const initialState: ICalendarState = {
  arrDates: [],
  arrDays: ['일', '월', '화', '수', '목', '금', '토'],
  strYearMonth: '',
  monthDate: new Date(),
  nMouthOption: 0,
};

type CalendarAction =
  | { type: 'CREATE_INIT_CALENDAR' }
  | { type: 'UPDATE_CALENDAR' }
  | { type: 'INCREASE_MOUTH_OPTION' }
  | { type: 'DECREASE_MOUTH_OPTION' };

// Calendar 리듀서
const calendarReducer = (
  state: ICalendarState,
  action: CalendarAction,
): ICalendarState => {
  switch (action.type) {
    case 'CREATE_INIT_CALENDAR': {
      const monthDate = createMonthStartFromFirstDay();
      const strYearMonth = createYearMonthText(monthDate);
      const arrDates = createDates(monthDate);
      return { ...state, arrDates, strYearMonth, monthDate };
    }
    case 'UPDATE_CALENDAR': {
      const monthDate = createMonthStartFromFirstDay(state.nMouthOption);
      const strYearMonth = createYearMonthText(monthDate);
      const arrDates = createDates(monthDate);
      return { ...state, arrDates, strYearMonth, monthDate };
    }
    case 'INCREASE_MOUTH_OPTION': {
      return {
        ...state,
        nMouthOption: state.nMouthOption + 1,
      };
    }
    case 'DECREASE_MOUTH_OPTION': {
      return {
        ...state,
        nMouthOption: state.nMouthOption - 1,
      };
    }

    default:
      throw new Error('Calendar : Unhandled action');
  }
};

const useCalendar = () => {
  const [calendarState, calendarDispatch] = useReducer(
    calendarReducer,
    initialState,
  );
  return { calendarState, calendarDispatch };
};

export default useCalendar;
