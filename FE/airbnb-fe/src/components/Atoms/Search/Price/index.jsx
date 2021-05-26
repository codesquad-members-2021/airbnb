import React from 'react';
import styled from 'styled-components';

const Price = ({ dispatch }) => {
  return (
    <PriceDiv>
      <PriceWrap onClick={() => dispatch({ type: 'PRICE_MODAL_OFF' })}>
        <PriceTitle>요금</PriceTitle>
        <PriceInp>금액대 설정</PriceInp>
      </PriceWrap>
      <LineDiv />
    </PriceDiv>
  );
};

const PriceDiv = styled.div`
  display: grid;
  grid-template-columns: 6fr 0.1fr;
  justify-content: space-between;
  align-items: center;
`;
const PriceWrap = styled.div`
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  border-radius: 3rem;
  padding: 0.9rem 1.5rem;
  &:hover {
    background: ${({ theme }) => theme.colors.gray6};
  }
`;
const PriceTitle = styled.div`
  color: ${({ theme }) => theme.colors.black};
  font-weight: bold;
`;
const PriceInp = styled.div`
  color: ${({ theme }) => theme.colors.gray2};
`;
const LineDiv = styled.div`
  border-left: 1px solid #c0c0c0;
  height: 2rem;
`;

export default Price;
