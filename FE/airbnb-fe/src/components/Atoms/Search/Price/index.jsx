import React from 'react';
import styled from 'styled-components';

const Price = () => {
  return (
    <PriceDiv>
      <PriceTitle>요금</PriceTitle>
      <PriceInp>금액대 설정</PriceInp>
    </PriceDiv>
  );
};

const PriceDiv = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  border-radius: 3rem;
`;
const PriceTitle = styled.div`
  color: ${({ theme }) => theme.colors.black};
  font-weight: bold;
`;
const PriceInp = styled.div`
  color: ${({ theme }) => theme.colors.gray2};
`;

export default Price;
