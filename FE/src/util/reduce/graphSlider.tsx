import { useReducer } from 'react';

interface IState {
  buttonCoordinates: {
    leftX: number;
    rightX: number;
    maxLeftX: number;
    maxRightX: number;
  };
  currBackgroundWidth: number;
  priceRange: {
    start: number;
    end: number;
  };
  priceUnitWidth: number;
}

const initialState: IState = {
  buttonCoordinates: {
    leftX: 0,
    rightX: 0,
    maxLeftX: 0,
    maxRightX: 0,
  },
  currBackgroundWidth: 0,
  priceRange: {
    start: 0,
    end: 0,
  },
  priceUnitWidth: 0,
};

type Action =
  | {
      type: 'INIT_SLIDER_BUTTON_COORDINATES';
      payload: {
        leftX: number;
        rightX: number;
        maxLeftX: number;
        maxRightX: number;
      };
    }
  | {
      type: 'SET_SLIDER_BUTTON_COORDINATES';
      payload: { value: number; btnType: string | null };
    }
  | {
      type: 'SET_PRICE_RANGE';
      payload: { start: number; end: number };
    }
  | {
      type: 'SET_PRICE_UNIT_WIDTH';
      payload: number;
    };
// ---

// graphSlider 리듀서
const graphSliderReducer = (state: IState, action: Action): IState => {
  switch (action.type) {
    case 'INIT_SLIDER_BUTTON_COORDINATES': {
      const { leftX, rightX, maxLeftX, maxRightX } = action.payload;
      return {
        ...state,
        buttonCoordinates: {
          ...state.buttonCoordinates,
          leftX,
          rightX,
          maxLeftX,
          maxRightX,
        },
      };
    }
    case 'SET_SLIDER_BUTTON_COORDINATES': {
      const { leftX, rightX, maxLeftX, maxRightX } = state.buttonCoordinates;
      const { value, btnType } = action.payload;

      const bNotUpdate =
        !btnType ||
        (btnType === 'L' && (value > rightX || value < maxLeftX)) ||
        (btnType === 'R' && (value < leftX || value > maxRightX));
      if (bNotUpdate) return { ...state };

      return {
        ...state,
        buttonCoordinates: {
          ...state.buttonCoordinates,
          leftX: btnType === 'L' ? value : leftX,
          rightX: btnType === 'R' ? value : rightX,
        },
        currBackgroundWidth: btnType === 'L' ? rightX - value : value - leftX,
      };
    }

    case 'SET_PRICE_RANGE': {
      const { start, end } = action.payload;
      return {
        ...state,
        priceRange: {
          ...state.priceRange,
          start,
          end,
        },
      };
    }

    case 'SET_PRICE_UNIT_WIDTH': {
      return {
        ...state,
        priceUnitWidth: action.payload
      }
    }

    default:
      throw new Error('Reduce - GraphSlider : Unhandled action');
  }
};

export const useGraphSlider = () => {
  const [state, dispatch] = useReducer(graphSliderReducer, initialState);
  return { state, dispatch };
};
