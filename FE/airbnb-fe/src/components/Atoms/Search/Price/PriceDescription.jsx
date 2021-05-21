import React from 'react';
import styled from 'styled-components';

const PriceDescription = () => {
  return (
    <PriceDescriptionDiv>
      <PriceTitle>가격 범위</PriceTitle>
      <PriceCaption>
        <PriceCaptionRange>₩100,000 - ₩1,000,000+</PriceCaptionRange>
        <PriceCaptionSpan>평균 1박 요금은 ₩165,556 입니다.</PriceCaptionSpan>
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
