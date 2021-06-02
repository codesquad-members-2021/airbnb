import { useReducer } from 'react';

// export interface
export interface ICanvasSize {
  width: number;
  height: number;
}

// ===

// Reducer 관련
interface IState {
  size: {
    width: number;
    height: number;
    isLoading: boolean;
  };
}

const initialState: IState = {
  size: {
    width: 0,
    height: 120,
    isLoading: true,
  },
};

type Action = {
  type: 'SET_CANVAS_SIZE';
  payload: { width: number; height: number; isLoading: boolean };
}
// ---

// Calendar 리듀서
const canvasReducer = (state: IState, action: Action): IState => {
  switch (action.type) {
    case 'SET_CANVAS_SIZE': {
      const { width, height } = state.size;
      const { width: wIn, height: hIn, isLoading } = action.payload;
      return {
        ...state,
        size: {
          ...state.size,
          width: width < wIn ? wIn : width,
          height: height < hIn ? hIn : height,
          isLoading,
        },
      };
    }

    default:
      throw new Error('useCanvas : Unhandled action');
  }
};

const useCanvasSize = () => {
  const [state, dispatch] = useReducer(canvasReducer, initialState);
  return { state, dispatch };
};

export default useCanvasSize;
