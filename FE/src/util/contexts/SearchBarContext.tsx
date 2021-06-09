import { createContext, Dispatch, useContext, useReducer } from 'react';
import { ICustomProps } from '../types';

// 1) interface & type
type TPeopleCountKeys = "adult" | "child" | 'infant';
interface SearchBarState {
  calendar: {
    firstMonthOption: number;
    lastMonthOption: number;
    startDate?: Date;
    endDate?: Date;
  };
  fee: {
    start: number;
    end: number;
  };
  peopleCount: {
    [key in TPeopleCountKeys]: number;
  };
}

const searchBarInitState: SearchBarState = {
  calendar: {
    firstMonthOption: 0,
    lastMonthOption: 0,
  },
  fee: {
    start: 0,
    end: 0,
  },
  peopleCount: {
    adult: 0,
    child: 0,
    infant: 0,
  },
};

type SearchBarAction =
  | {
      type: 'SET_CALENDAR_MONTH_OPTION';
      payload: {
        firstMonthOption: number;
        lastMonthOption: number;
      };
    }
  | { type: 'INCREASE_CALENDAR_MOUTH_OPTION' }
  | { type: 'DECREASE_CALENDAR_MOUTH_OPTION' }
  | { type: 'SET_CALENDAR_DATE'; payload: Date }
  | { type: 'SET_FEE_PRICE_RANGE'; payload: { start: number; end: number } }
  | { type: 'INCREASE_PEOPLE_COUNT'; payload: TPeopleCountKeys } // type (peopleCount의 key)
  | { type: 'DECREASE_PEOPLE_COUNT'; payload: TPeopleCountKeys };

// 2) SearchBar 리듀서
const searchBarReducer = (
  state: SearchBarState,
  action: SearchBarAction,
): SearchBarState => {
  switch (action.type) {
    case 'SET_CALENDAR_MONTH_OPTION': {
      const {
        payload: { firstMonthOption, lastMonthOption },
      } = action;
      return {
        ...state,
        calendar: { ...state.calendar, firstMonthOption, lastMonthOption },
      };
    }
    case 'INCREASE_CALENDAR_MOUTH_OPTION': {
      const {
        calendar: { firstMonthOption, lastMonthOption },
      } = state;
      return {
        ...state,
        calendar: {
          ...state.calendar,
          firstMonthOption: firstMonthOption + 1,
          lastMonthOption: lastMonthOption + 1,
        },
      };
    }
    case 'DECREASE_CALENDAR_MOUTH_OPTION': {
      const {
        calendar: { firstMonthOption, lastMonthOption },
      } = state;
      return {
        ...state,
        calendar: {
          ...state.calendar,
          firstMonthOption: firstMonthOption - 1,
          lastMonthOption: lastMonthOption - 1,
        },
      };
    }
    case 'SET_CALENDAR_DATE': {
      const {
        calendar: { startDate, endDate },
      } = state;
      const { payload: clickedDate } = action;

      let startDateTmp, endDateTmp;

      const checkStartDate =
        !startDate || startDate.valueOf() >= clickedDate.valueOf();

      if (checkStartDate) startDateTmp = clickedDate;
      else if (!endDate) {
        startDateTmp = startDate;
        endDateTmp = clickedDate;
      }

      return {
        ...state,
        calendar: {
          ...state.calendar,
          startDate: startDateTmp,
          endDate: endDateTmp,
        },
      };
    }
    case 'SET_FEE_PRICE_RANGE': {
      const { start, end } = action.payload;
      return {
        ...state,
        fee: {
          ...state.fee,
          start,
          end,
        },
      };
    }
    case 'INCREASE_PEOPLE_COUNT': {
      const currValue = state.peopleCount[action.payload];

      return {
        ...state,
        peopleCount: {
          ...state.peopleCount,
          [action.payload]: currValue + 1,
        },
      };
    }
    case 'DECREASE_PEOPLE_COUNT': {
      const currValue = state.peopleCount[action.payload];
      if (!currValue) return {...state};

      return {
        ...state,
        peopleCount: {
          ...state.peopleCount,
          [action.payload]: currValue - 1,
        },
      };
    }
    default:
      throw new Error('SearchBarContext : Unhandled action');
  }
};

// 3) Context들 정의
const SearchBarStateContext =
  createContext<SearchBarState | undefined>(undefined);

type SearchBarDispatch = Dispatch<SearchBarAction>;
const SearchBarDispatchContext =
  createContext<SearchBarDispatch | undefined>(undefined);

// 4) useContext 커스텀 훅 정의 (SearchBarState, SearchBarDispatch 외부에서 쓸 때 사용)
export const useSearchBarState = () => {
  const SearchBarState = useContext(SearchBarStateContext);
  if (!SearchBarState) throw new Error('SearchBarContext(State) not found');
  return SearchBarState;
};

export const useSearchBarDispatch = () => {
  const SearchBarDispatch = useContext(SearchBarDispatchContext);
  if (!SearchBarDispatch)
    throw new Error('SearchBarContext(Dispatch) not found');
  return SearchBarDispatch;
};

// 5) SearchBarContextProvider (== Default ==)
const SearchBarContextProvider = ({ children }: ICustomProps) => {
  const [searchBarState, searchBarDispatch] = useReducer(
    searchBarReducer,
    searchBarInitState,
  );

  return (
    <SearchBarDispatchContext.Provider value={searchBarDispatch}>
      <SearchBarStateContext.Provider value={searchBarState}>
        {children}
      </SearchBarStateContext.Provider>
    </SearchBarDispatchContext.Provider>
  );
};

export default SearchBarContextProvider;
