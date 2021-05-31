/*
 * 참고자료: https://velog.io/@velopert/typescript-context-api
 * 코딩 전 참고사항 
    - 왜 Context가 2개나 있어?
        MainStateContext는 상태 전용 Context
        MainDispatchContext는 디스패치 전용 Context
        ▶ 두 개의 Context 를 만들면 렌더링이 낭비되는 것을 방지
*/
import { createContext, Dispatch, useReducer, useContext } from 'react';
import { ICustomProps } from '../util/types';

type MainState = {
  searchBarClickedIdx: number;
  authModalVisbile: boolean;
};

const initialState: MainState = {
  searchBarClickedIdx: -1,
  authModalVisbile: false,
};

// 추후 Provider를 사용하지 않았을 때에는 Context의 값이 undefined 가 되어야 하므로,
// <MainState | undefined> 와 같이 Context 의 값이 MainState 일 수도 있고 undefined 일 수도 있다고 선언
const MainStateContext = createContext<MainState | undefined>(undefined);

type MainAction =
  | {
      type: 'SET_SEARCHBAR_CLICKED_IDX';
      payload: number;
    }
  | {
      type: 'SET_AUTH_MODAL_VISIBLE';
      payload: boolean;
    }
  | {
      type: 'TOGGLE_AUTH_MODAL_VISIBLE';
    };

// Dispatch 를 리액트 패키지에서 불러와서 Generic으로 액션들의 타입을 넣어주면 추후 컴포넌트에서
// 액션을 디스패치 할 때 액션들에 대한 타입을 검사 할 수 있음
type MainDispatch = Dispatch<MainAction>;
const MainDispatchContext = createContext<MainDispatch | undefined>(undefined);

// 리듀서 정의
const mainReducer = (state: MainState, action: MainAction): MainState => {
  switch (action.type) {
    case 'SET_SEARCHBAR_CLICKED_IDX':
      return {
        ...state,
        searchBarClickedIdx: action.payload,
      };
    case 'SET_AUTH_MODAL_VISIBLE':
      return {
        ...state,
        authModalVisbile: action.payload,
      };
    case 'TOGGLE_AUTH_MODAL_VISIBLE':
      return {
        ...state,
        authModalVisbile: !state.authModalVisbile,
      };
    default:
      throw new Error('MainContext : Unhandled action');
  }
};

// Provider 정의
export const MainContextProvider = ({ children }: ICustomProps) => {
  const [mainState, mainDispatch] = useReducer(mainReducer, initialState);

  return (
    <MainDispatchContext.Provider value={mainDispatch}>
      <MainStateContext.Provider value={mainState}>
        {children}
      </MainStateContext.Provider>
    </MainDispatchContext.Provider>
  );
};

// MainStateContext는 <MainState | undefined> 임. 유효한지 확인 후 실행하기 위해 커스텀 훅 생성 (MainDispatchContext도 마찬가지)
export const useMainState = () => {
  const mainState = useContext(MainStateContext);
  if (!mainState) throw new Error('MainContextProvider(State) not found');
  return mainState;
};

export const useMainDispatch = () => {
  const mainDispatch = useContext(MainDispatchContext);
  if (!mainDispatch) throw new Error('MainContextProvider(Dispatch) not found');
  return mainDispatch;
};
