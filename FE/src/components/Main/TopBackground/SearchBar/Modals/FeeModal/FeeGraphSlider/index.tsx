import { useRef, useEffect } from 'react';
import styled from 'styled-components';
import { IFeeGraph } from '..';
import {
  useCanvasSize,
  ICanvasSize,
  useGraphSlider,
} from '../../../../../../../util/reduce';
import { useSearchBarDispatch } from '../../../../../../../util/contexts/SearchBarContext';
import SliderBlock from './SliderBlock';
import SliderButton from './SliderButton';

const FeeGraphSlider = ({ feeData, ...props }: IFeeGraph) => {
  // 1. 초기 설정
  const { data, start: initStart, end: initEnd, unit: initUnit } = feeData;
  const searchBarDispatch = useSearchBarDispatch();
  const {
    state: {
      size: canvasSize,
      size: { width, height, isLoading: isCanvasSizeLoading },
      rect: canvasRect,
    },
    dispatch: canvasDispatch,
  } = useCanvasSize(); // useReducer

  const {
    state: {
      buttonCoordinates: { leftX, rightX },
      currBackgroundWidth,
      priceUnitWidth,
      priceRange,
    },
    dispatch: graphSliderDispatch,
  } = useGraphSlider();

  const feeGraphSliderRef = useRef<HTMLDivElement>(null);
  const canvasRef = useRef<HTMLCanvasElement>(null);
  const currDownSlideBtnRef =
    useRef<{
      btnType: string | null;
      button: HTMLButtonElement | null;
    }>();

  // 2. useEffect
  // 1) Canvas 사이즈 지정
  useEffect(() => {
    if (!feeGraphSliderRef.current) return;
    const { offsetWidth, offsetHeight } = feeGraphSliderRef.current;

    // canvas의 전체크기 설정
    canvasDispatch({
      type: 'SET_CANVAS_SIZE',
      payload: {
        width: offsetWidth,
        height: offsetHeight,
        // isLoading은 state.size.isLoading (isCanvasSizeLoading)
        isLoading: false,
      },
    });

    canvasDispatch({
      type: 'SET_CANVAS_RECT_INFO',
      payload: feeGraphSliderRef.current.getClientRects()[0],
    });
  }, []);

  // 2) 캔버스 그리기 및 Slider 버튼 위치 지정
  useEffect(() => {
    if (!data || data.length <= 0) return;
        if (!initStart || !initEnd || !initUnit) return;
    if (isCanvasSizeLoading || !canvasRef.current) return;

    const canvas: HTMLCanvasElement = canvasRef.current;
    const ctx: CanvasRenderingContext2D | null = canvas.getContext('2d');
    if (!ctx) return;

    const onePer = { w: width / data.length, h: height / Math.max(...data) };

    let startX = 0;

    ctx.beginPath();
    data.forEach((price, i) => {
      const h = price * onePer.h;
      ctx.rect(startX, 0, onePer.w, (i === 0) ? (h - ((price * onePer.h) / 10)) : h );
      ctx.fillStyle = '#FFF';
      ctx.fill();
      startX += onePer.w;
    });
    ctx.closePath();

    // -2.1- Slider 버튼 위치 지정
    graphSliderDispatch({
      type: 'INIT_SLIDER_BUTTON_COORDINATES',
      payload: { leftX: 0, rightX: width, maxLeftX: 0, maxRightX: width },
    });

    // -2.2- Slider 버튼 Background Size 초기화
    graphSliderDispatch({
      type: 'INIT_SLIDER_BACKGROUND_WIDTH',
      payload: width,
    });

    // -3- 단위당 Width 설정
    graphSliderDispatch({
      type: 'SET_PRICE_UNIT_WIDTH',
      payload: (width * initUnit) / (initEnd - initStart),
    });

    // -4- 가격 시작 / 끝 값 초기화
    graphSliderDispatch({
      type: 'SET_PRICE_RANGE',
      payload: {
        start: initStart,
        end: initEnd,
      },
    });
  }, [isCanvasSizeLoading]);

  // 3-1) SlideButton (leftX & rightX 변경 시 / slideButtonMove에서 변경됨)
  useEffect(() => {
    if (!initStart || !initEnd || !initUnit) return;
    if (!priceUnitWidth) return;
    graphSliderDispatch({
      type: 'SET_PRICE_RANGE',
      payload: {
        start: initStart + initUnit * Math.floor(leftX / priceUnitWidth),
        end: initStart + initUnit * Math.ceil(rightX / priceUnitWidth),
      },
    });
  }, [leftX, rightX]);

  // 3-2) SearchBarContext에 가격 시작, 끝 값 확정
  useEffect(() => {
    if (Object.values(priceRange).every((priceProp) => !priceProp)) return;

    const { start, end } = priceRange;
    searchBarDispatch({
      type: 'SET_FEE_PRICE_RANGE',
      payload: { start, end },
    });
  }, [priceRange]);

  // 3. Events -- document에 거는거말고 다른 방법 찾기!
  // 1) SlideButton 이동
  const handleSlideButtonDown = (
    e: React.MouseEvent | MouseEvent,
    btnType: string,
  ) => {
    e.preventDefault();
    const button = e.currentTarget as HTMLButtonElement;
    currDownSlideBtnRef.current = { btnType, button };
    document.addEventListener('mousemove', slideButtonMove);
  };

  const handleSlideButtonUp = (e: React.MouseEvent | MouseEvent) => {
    e.preventDefault();
    currDownSlideBtnRef.current = { btnType: null, button: null };
    removeSlideButtonMove();
  };

  const removeSlideButtonMove = (): void =>
    document.removeEventListener('mousemove', slideButtonMove);

  const slideButtonMove = (e: MouseEvent) => {
    const { left: startX } = canvasRect;
    const { x } = e;

    if (!currDownSlideBtnRef.current) return;
    const { btnType } = currDownSlideBtnRef.current;

    const componentGrandParent =
      feeGraphSliderRef.current?.parentElement?.parentElement;
    if (!componentGrandParent) return;
    if (!componentGrandParent.contains(e.target as Node))
      return removeSlideButtonMove();

    graphSliderDispatch({
      type: 'SET_SLIDER_BUTTON_COORDINATES',
      payload: { btnType, value: Math.abs(startX - x) },
    });
  };
  // ====

  return (
    <FeeGraphSliderLayout {...props} ref={feeGraphSliderRef}>
      {!isCanvasSizeLoading && (
        <FeeGraphSliderRow>
          <SliderBlock
            width={currBackgroundWidth}
            height={canvasSize.height}
            left={leftX}
          />
          <div>
            <SliderButton
              left={leftX}
              onMouseDown={(e) => handleSlideButtonDown(e, 'L')}
              onMouseUp={handleSlideButtonUp}
            />
            <SliderButton
              left={rightX}
              onMouseDown={(e) => handleSlideButtonDown(e, 'R')}
              onMouseUp={handleSlideButtonUp}
            />
          </div>
          <GraphCanvas
            width={canvasSize.width}
            height={canvasSize.height}
            ref={canvasRef}
          />
        </FeeGraphSliderRow>
      )}
    </FeeGraphSliderLayout>
  );
};

export default FeeGraphSlider;

// --- Styled Components ---
const FeeGraphSliderLayout = styled.div`
  display: flex;
  flex-direction: column;
`;
const FeeGraphSliderRow = styled.div`
  position: relative;
  & + & {
    margin-top: 4px;
  }
`;

const GraphCanvas = styled.canvas<ICanvasSize>`
  width: ${({ width }) => `${width}px`};
  height: ${({ height }) => `${height}px`};
  background-color: ${({ theme }) => theme.colors.gray2 + '50'};
  position: absolute;
  top: 0;
`;
