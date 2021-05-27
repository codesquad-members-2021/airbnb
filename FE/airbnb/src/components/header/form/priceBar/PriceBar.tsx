import React, { RefObject, useEffect, useRef, useState } from 'react';
import styled from 'styled-components';
import PriceChart from './PriceChart';
import { priceSectionType } from './priceType';
import { priceData as sampleData } from './sampleData';

interface Props {
  toggleRef: RefObject<HTMLDivElement>;
}
const PriceBar = ({ toggleRef }: Props) => {
  const [priceData, setPriceData] = useState(sampleData);

  const priceSection = getSectionHeight(priceData);

  return (
    <StyledPriceBar ref={toggleRef}>
      <div className='title'>가격범위</div>
      <div className='price-range'>￦0 ~ ￦1,000,000+</div>
      <div className='average'>평균 1박 요금은 ￦165,556입니다.</div>
      <div className='chart'>
        <PriceChart priceSection={priceSection} />
      </div>
    </StyledPriceBar>
  );
};

const getSectionHeight = (data: Array<number>): priceSectionType => {
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

const StyledPriceBar = styled.div`
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
    height: 170px;
  }
  .average {
    font-size: ${({ theme }) => theme.fontSize.small};
    color: ${({ theme }) => theme.colors.gray3};
  }
`;
