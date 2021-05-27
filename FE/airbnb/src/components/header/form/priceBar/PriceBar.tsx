import React, { MouseEvent, ReactElement, RefObject, useEffect, useRef, useState } from 'react';
import styled from 'styled-components';
import { getNumberWithComma } from '../../../util/util';
import PriceChart from './PriceChart';
import { btnPositionType, priceSectionType } from './priceType';
import { ReactComponent as PauseBtn } from '../../../../assets/svg/Property 1=pause-circle.svg';
import { priceData as sampleData } from './sampleData';

interface Props {
  toggleRef: RefObject<HTMLDivElement>;
}
const PriceBar = ({ toggleRef }: Props) => {
  const [isBtnDown, setIsBtnDown] = useState(false);
  const [downBtnType, setDownBtnType] = useState({ left: false, right: false });
  const [btnPosition, setBtnPosition] = useState({ left: 110, right: 0 });
  const [priceData, setPriceData] = useState(sampleData);

  const minPrice = getNumberWithComma(Math.min(...priceData));
  const priceAverage = getNumberWithComma(getPriceAverage(priceData));
  const priceSection = getSectionHeight(priceData);
  const handleMouseDown = (e: MouseEvent): void => {
    const target = e.target as SVGAElement;
    const btnWrapper = target.closest('.pause-btn') as HTMLDivElement;
    const btnType = btnWrapper.dataset.type as string;
    setIsBtnDown(true);
    setDownBtnType({ ...downBtnType, [btnType]: true });
  };
  const handleMouseMove = (e: MouseEvent): void => {
    if (!isBtnDown) return;
    console.log(e);
  };
  const handleMouseUp = (): void => {
    setIsBtnDown(false);
    setDownBtnType({ left: false, right: false });
  };
  return (
    <StyledPriceBar ref={toggleRef} btnPosition={btnPosition}>
      <div className='title'>가격범위</div>
      <div className='price-range'>￦{minPrice} ~ ￦1,000,000+</div>
      <div className='average'>평균 1박 요금은 ￦{priceAverage}입니다.</div>
      <div className='chart'>
        <div className='leftBox'></div>
        <PriceChart priceSection={priceSection} />
        <div className='rightBox'></div>
      </div>
      <PauseBtn
        onMouseDown={handleMouseDown}
        onMouseUp={handleMouseUp}
        onMouseMove={handleMouseMove}
        className='pause-btn left__pause-btn'
        data-type='left'
      />
      <PauseBtn
        onMouseDown={handleMouseDown}
        onMouseUp={handleMouseUp}
        onMouseMove={handleMouseMove}
        className='pause-btn right__pause-btn'
        data-type='right'
      />
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
    /* overflow: hidden; */
    .leftBox,
    .rightBox {
      position: absolute;
      top: 0;
      width: 100%;
      height: 100%;
      background-color: ${({ theme }) => theme.colors.green};
      /* background-color: ${({ theme }) => theme.colors.white}; */
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
