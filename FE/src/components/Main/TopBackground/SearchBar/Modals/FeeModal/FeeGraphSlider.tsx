import { useRef, useEffect } from 'react';
import styled from 'styled-components';
import { IFeeGraph } from '.';
import useCanvasSize, { TCanvasSize } from '../../../../../../hooks/useCanvasSize';

const FeeGraphSlider = ({ resData, ...props }: IFeeGraph) => {
  // 1. 초기 설정
  const { data } = resData;
  const {
    state: {
      size: canvasSize,
      size: { width, height, isLoading: isCanvasSizeLoading },
    },
    dispatch: canvasDispatch,
  } = useCanvasSize(); // useReducer

  const feeGraphSliderRef = useRef<HTMLDivElement>(null);
  const canvasRef = useRef<HTMLCanvasElement>(null);

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
  }, []);

  // 2) 캔버스 그리기
  useEffect(() => {
    if (isCanvasSizeLoading || !canvasRef.current) return;

    const canvas: HTMLCanvasElement = canvasRef.current;
    const ctx: CanvasRenderingContext2D | null = canvas.getContext('2d');
    if (!ctx) return;

    const onePer = { w: width / data.length, h: height / Math.max(...data) };

    let startX = 0, startY = (height - (onePer.h * data.length));

    // 🤪 라노 캔버스 그린다!!
    // 🤯 라노 키보드 부신다!!
    ctx.beginPath();
    data.forEach((price) => {
      ctx.rect(startX, startY-(price * onePer.h), onePer.w, price * onePer.h);
      ctx.fillStyle = '#BDBDBD';
      ctx.fill();
      startX += onePer.w;
    });
    ctx.closePath();

  }, [isCanvasSizeLoading]);

  return (
    <FeeGraphSliderLayout {...props} ref={feeGraphSliderRef}>
      <FeeGraphSliderRow>
        {!isCanvasSizeLoading && (
          <GraphCanvas
            width={canvasSize.width}
            height={canvasSize.height}
            ref={canvasRef}
          />
        )}
      </FeeGraphSliderRow>
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
  & + & {
    margin-top: 4px;
  }
`;

const GraphCanvas = styled.canvas<TCanvasSize>`
  width: ${({ width }) => `${width}px`};
  height: ${({ height }) => `${height}px`};
  background-color: ${({ theme }) => theme.colors.white};
`;
