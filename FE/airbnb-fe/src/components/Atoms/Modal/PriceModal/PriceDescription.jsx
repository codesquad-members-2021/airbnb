import React, { useContext } from 'react';
import styled from 'styled-components';
import { SearchContext } from '../../Search';

const PriceDescription = () => {
  const { priceData } = useContext(SearchContext);

  const priceRange = `₩${priceData.minPrice} - ₩${priceData.maxPrice}+`;
  const priceAverage = `평균 1박 요금은 ₩${parseInt(
    (priceData.minPrice + priceData.maxPrice) / 2
  )} 입니다.`;

  return (
    <PriceDescriptionDiv>
      <PriceTitle>가격 범위</PriceTitle>
      <PriceCaption>
        <PriceCaptionRange>{priceRange}</PriceCaptionRange>
        <PriceCaptionSpan>{priceAverage}</PriceCaptionSpan>
      </PriceCaption>
    </PriceDescriptionDiv>
  );
};

const PriceDescriptionDiv = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  gap: 1rem;
`;
const PriceTitle = styled.div`
  font-weight: 700;
  font-size: ${({ theme }) => theme.fontSizes.M};
`;
const PriceCaption = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
`;
const PriceCaptionRange = styled.div`
  color: ${({ theme }) => theme.colors.gray1};
`;
const PriceCaptionSpan = styled.div`
  color: ${({ theme }) => theme.colors.gray3};
  font-size: ${({ theme }) => theme.fontSizes.XXS};
`;
export default PriceDescription;
