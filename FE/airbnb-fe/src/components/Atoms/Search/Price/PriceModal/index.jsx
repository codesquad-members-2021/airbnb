import React from 'react';
import styled from 'styled-components';
import PriceDescription from '../PriceDescription';
import PriceChart from '../PriceChart';
const PriceModal = () => {
  return (
    <PriceModalDiv>
      <PriceDescription />
      <PriceChart />
    </PriceModalDiv>
  );
};

const PriceModalDiv = styled.div`
  position: absolute;
  top: 6rem;
  left: 27rem;
  width: 31rem;
  height: 23rem;
  padding: 3.7rem 4rem 4.3rem 4rem;
  border-radius: 40px;
  background-color: ${({ theme }) => theme.colors.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
`;

export default PriceModal;
