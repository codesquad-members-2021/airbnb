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
   // DOMRect | DOMRectReadOnly
  rect: {
    bottom: number;
    height: number;
    left: number;
    right: number;
    top: number;
    width: number;
    x: number;
    y: number;
  }
}

const initialState: IState = {
  size: {
    width: 0,
    height: 120,
    isLoading: true,
  },
  rect: {
    bottom: 0,
    height: 0,
    left: 0,
    right: 0,
    top: 0,
    width: 0,
    x: 0,
    y: 0,
  }
};

type Action = {
  type: 'SET_CANVAS_SIZE';
  payload: { width: number; height: number; isLoading: boolean };
} | {
  type: 'SET_CANVAS_RECT_INFO',
  payload: DOMRect,
}
// ---

// canvas 리듀서
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
    case 'SET_CANVAS_RECT_INFO': {
      return {
        ...state,
        rect: action.payload,
      }
    }

    default:
      throw new Error('Reduce - CanvasSize  : Unhandled action');
  }
};

export const useCanvasSize = () => {
  const [state, dispatch] = useReducer(canvasReducer, initialState);
  return { state, dispatch };
};
