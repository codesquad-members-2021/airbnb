import { createContext, Dispatch, useReducer, useContext } from 'react';
import { ICustomProps } from '../types';

type MainState = {
  searchBarClickedIdx: number;
  authModalVisbile: boolean;
};

const initialState: MainState = {
  searchBarClickedIdx: -1,
  authModalVisbile: false,
};

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

type MainDispatch = Dispatch<MainAction>;
const MainDispatchContext = createContext<MainDispatch | undefined>(undefined);

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
