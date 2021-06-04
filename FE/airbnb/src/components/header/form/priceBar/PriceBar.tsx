import { MouseEvent, RefObject, useState } from 'react';
import styled from 'styled-components';
import { getNumberWithComma } from '../../../../util/tsUtils';
import PriceChart from './PriceChart';
import { btnPositionType, priceSectionType } from './priceType';
import { ReactComponent as PauseBtn } from '../../../../assets/svg/Property 1=pause-circle.svg';
import { priceData as sampleData } from './sampleData';
import { useRecoilState, useRecoilValue } from 'recoil';
import { throttle } from '../../../../util/util';
import {
  fetchPrice,
  pauseBtnLastPositionState,
  pauseBtnPositionState,
  priceState,
} from '../../../../recoilStore/headerAtom';
import { CenterContainer } from '../../../../util/utilStyles';

export const PRICE_DATA = {
  WIDTH: 365,
  DEFAULT_MIN_PRICE: 10000,
  DEFAULT_MAX_PRICE: 1000000,
  DEFAULT_LEFT: 1000,
  DEFAULT_RIGHT: 1350,
};

interface Props {
  toggleRef: RefObject<HTMLDivElement>;
}
const PriceBar = ({ toggleRef }: Props) => {
  const { WIDTH, DEFAULT_MIN_PRICE, DEFAULT_MAX_PRICE, DEFAULT_LEFT, DEFAULT_RIGHT } = PRICE_DATA;
  const [isBtnDown, setIsBtnDown] = useState(false);
  const [downBtnType, setDownBtnType] = useState({ left: false, right: false });
  const [clickPosition, setClickPosition] = useState(0);
  // const [samplePriceData, setPriceData] = useState(sampleData);
  const priceData = useRecoilValue(fetchPrice);
  const [btnPosition, setBtnPosition] = useRecoilState(pauseBtnPositionState);
  const [btnLastPosition, setBtnLastPosition] = useRecoilState(pauseBtnLastPositionState);
  const [priceRange, setPriceRange] = useRecoilState(priceState);

  const minPrice = getNumberWithComma(priceRange.min);
  const maxPrice = getNumberWithComma(priceRange.max);
  if (typeof priceData === 'string') {
    return <div>{priceData}</div>;
  }
  const priceAverage = priceData && getNumberWithComma(getPriceAverage(priceData));
  const priceSection = priceData && getSectionHeight(priceData);

  const handleMouseDown = (e: MouseEvent): void => {
    const target = e.target as SVGAElement;
    const btnWrapper: HTMLDivElement | null = target.closest('.pause-btn');
    if (!btnWrapper) return;
    const btnType: string | undefined = btnWrapper.dataset.type;
    if (!btnType) return;
    setIsBtnDown(true);
    setDownBtnType({ ...downBtnType, [btnType]: true });
    setClickPosition(e.pageX);
  };

  const handleMouseMove = (e: MouseEvent): void => {
    if (!isBtnDown) return;
    const move = e.pageX - clickPosition;
    const priceGap = DEFAULT_MAX_PRICE - DEFAULT_MIN_PRICE;
    if (downBtnType.left) {
      const position = btnLastPosition.left + move;
      if (position < 0) return;
      const newBtnPosition = { left: position, right: btnLastPosition.right };
      if (isOverlap(newBtnPosition)) return;
      setBtnPosition(newBtnPosition);
      const minPrice = Math.floor(DEFAULT_MIN_PRICE + priceGap * (position / WIDTH));
      setPriceRange((priceRange) => ({ ...priceRange, min: minPrice }));
    }
    if (downBtnType.right) {
      const position = btnLastPosition.right + move;
      if (position > 0) return;
      const newBtnPosition = { left: btnLastPosition.left, right: position };
      if (isOverlap(newBtnPosition)) return;
      setBtnPosition(newBtnPosition);
      const maxPrice = Math.floor(DEFAULT_MAX_PRICE - priceGap * ((position / WIDTH) * -1));
      setPriceRange((priceRange) => ({ ...priceRange, max: maxPrice }));
    }
  };

  const throttleHandleMouseMove = throttle(handleMouseMove, 10);

  const handleMouseUp = (e: MouseEvent): void => {
    if (!isBtnDown) return;
    setIsBtnDown(false);
    setDownBtnType({ left: false, right: false });
    setBtnLastPosition({ ...btnPosition });
  };

  const isOverlap = (position: btnPositionType): boolean =>
    DEFAULT_LEFT + position.left > DEFAULT_RIGHT + position.right;

  return (
    <StyledPriceBar
      ref={toggleRef}
      btnPosition={btnPosition}
      onMouseDown={handleMouseDown}
      onMouseMove={throttleHandleMouseMove}
      onMouseUp={handleMouseUp}
      onMouseLeave={handleMouseUp}
    >
      {priceData ? (
        <>
          <div className='title'>가격범위</div>
          <div className='price-range'>
            ￦{minPrice} ~ ￦{maxPrice}+
          </div>
          <div className='average'>평균 1박 요금은 ￦{priceAverage}입니다.</div>
          <div className='chart'>
            <div className='leftBox'></div>
            <PriceChart priceSection={priceSection} />
            <div className='rightBox'></div>
          </div>
          <PauseBtn className='pause-btn left__pause-btn' data-type='left' />
          <PauseBtn className='pause-btn right__pause-btn' data-type='right' />
        </>
      ) : (
        <StyledWarnPriceBar>위치, 체크인, 체크아웃 날짜를 입력해주세요🤐</StyledWarnPriceBar>
      )}
    </StyledPriceBar>
  );
};

const getPriceAverage = (data: number[]): number => {
  const totalPrice = data.reduce((acc, cur) => acc + cur);
  const totalLength = data.length;
  return Math.floor(totalPrice / totalLength);
};

const getSectionHeight = (data: number[]): priceSectionType => {
  const UNIT = 50000;
  const TOTAL_SECTION = 21;

  const initPriceSection: priceSectionType = {};
  for (let i = 0; i <= TOTAL_SECTION; i++) {
    initPriceSection[i] = 0;
  }

  const priceSection = data.reduce((acc: priceSectionType, price) => {
    const section = Math.ceil(price / UNIT) < 20 ? Math.ceil(price / UNIT) : 20;
    if (section in acc) acc[section]++;
    else acc[section] = 1;
    return acc;
  }, initPriceSection);
  return priceSection;
};

export default PriceBar;

interface StyledProps {
  btnPosition: btnPositionType;
}

const StyledPriceBar = styled.div<StyledProps>`
  position: absolute;
  top: 100px;
  left: -60px;
  width: 493px;
  height: 355px;
  padding: 52px 64px;
  z-index: 10;
  background-color: ${({ theme }) => theme.colors.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 1rem;
  .title {
    font-weight: 700;
    margin-bottom: 1rem;
  }
  .price-range {
    font-size: ${({ theme }) => theme.fontSize.large};
    margin-bottom: 0.25rem;
  }
  .chart {
    position: relative;
    height: 170px;
    overflow: hidden;
    .leftBox,
    .rightBox {
      position: absolute;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: ${({ theme }) => theme.colors.white};
      opacity: 0.5;
    }
    .leftBox {
      left: -100%;
      transform: ${({ btnPosition }) => `translateX(${btnPosition.left}px)`};
    }
    .rightBox {
      right: -100%;
      transform: ${({ btnPosition }) => `translateX(${btnPosition.right}px)`};
    }
  }
  .average {
    font-size: ${({ theme }) => theme.fontSize.small};
    color: ${({ theme }) => theme.colors.gray3};
  }
  .pause-btn {
    position: absolute;
    z-index: 100;
    opacity: 1;
    fill: white;
  }
  .left__pause-btn {
    bottom: 40px;
    left: 52px;
    transform: ${({ btnPosition }) => `translateX(${btnPosition.left}px)`};
  }
  .right__pause-btn {
    bottom: 40px;
    right: 52px;
    transform: ${({ btnPosition }) => `translateX(${btnPosition.right}px)`};
  }
`;

const StyledWarnPriceBar = styled(CenterContainer)`
  width: 100%;
  height: 100%;
  padding-bottom: 2rem;
  font-weight: 700;
`;
