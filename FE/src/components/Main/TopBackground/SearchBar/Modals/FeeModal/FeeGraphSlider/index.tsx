import { useRef, useEffect } from 'react';
import styled from 'styled-components';
import { IFeeGraph } from '..';
import useCanvasSize, {
  ICanvasSize,
} from '../../../../../../../hooks/useCanvasSize';
import SliderBlock from './SliderBlock';
import SliderButton from './SliderButton';

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

    /* 
      [*1*]
        캔버스에서 그려진 그래프 볼 때
        흰색부분이 실질적으로 그려진 그래프임.
        캔버스의 배경은 FFFFFF0 (투명도 최대)

        약간의 편법. 실질적으로 보이는 검은색은 없는 데이터인 부분.
        검은색은 SliderBlock 컴포넌트의 배경
        현재 구조가 SliderBlock 위에 캔버스가 있는 구조!

        그러므로 아래 DESCData는 내림차순으로 변경하여 생성
    */
    const DESCData = [...data].sort((a, b) => b - a); 

    const canvas: HTMLCanvasElement = canvasRef.current;
    const ctx: CanvasRenderingContext2D | null = canvas.getContext('2d');
    if (!ctx) return;

    const onePer = { w: width / data.length, h: height / Math.max(...data) };

    let startX = 0;

    // [*1*]에 의해 주석처리 (정상적인 그래프 그릴때 사용)
    // let startY = height - onePer.h * data.length;  

    // 🤪 라노 캔버스 그린다!!
    // 🤯 라노 키보드 부신다!!
    ctx.beginPath();
    DESCData.forEach((price) => {
      // [*1*]에 의해 주석처리 (정상적인 그래프 그릴때 사용 / 주석해제시엔 아래 그려지는 색상은 흰색말고 다른색 하기)
      // ctx.rect(startX, startY - price * onePer.h, onePer.w, price * onePer.h);

      ctx.rect(startX, 0, onePer.w, price * onePer.h);
      ctx.fillStyle = '#FFF';
      ctx.fill();
      startX += onePer.w;

    });
    ctx.closePath();
  }, [isCanvasSizeLoading]);

  return (
    <FeeGraphSliderLayout {...props} ref={feeGraphSliderRef}>
      {!isCanvasSizeLoading && (
        <FeeGraphSliderRow>
          <SliderBlock width={canvasSize.width} height={canvasSize.height}>
            <SliderButton btnType="L" />
            <SliderButton btnType="R" />
          </SliderBlock>
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
