import { useReducer } from 'react';
import {
  createMonthStartFromFirstDay,
  createDates,
  createYearMonthText,
} from '../util/calendar';

interface IState {
  arrDates: number[];
  arrDays: string[];
  strYearMonth: string;
  monthDate: Date;
  nMouthOption: number;
}

const initialState: IState = {
  arrDates: [],
  arrDays: ['일', '월', '화', '수', '목', '금', '토'],
  strYearMonth: '',
  monthDate: new Date(),
  nMouthOption: 0,
};

type Action =
  | { type: 'CREATE_CALENDAR'; payloadMouthOption: number }
  // 사용안함
  | { type: 'INCREASE_MOUTH_OPTION' }
  | { type: 'DECREASE_MOUTH_OPTION' };
  // ---

// Calendar 리듀서
const calendarReducer = (
  state: IState,
  action: Action,
): IState => {
  switch (action.type) {
    case 'CREATE_CALENDAR': {
      const monthDate = createMonthStartFromFirstDay(action.payloadMouthOption);
      const strYearMonth = createYearMonthText(monthDate);
      const arrDates = createDates(monthDate);
      return {
        ...state,
        arrDates,
        strYearMonth,
        monthDate,
        nMouthOption: action.payloadMouthOption,
      };
    }
    // 사용안함
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
    // -------

    default:
      throw new Error('useCalendar : Unhandled action');
  }
};

const useCalendar = () => {
  const [state, dispatch] = useReducer(
    calendarReducer,
    initialState,
  );
  return { state, dispatch };
};

export default useCalendar;
