import React from 'react';
import styled from 'styled-components';

const Price = () => {
  return <PriceDiv></PriceDiv>;
};

const PriceDiv = styled.div`
  background-color: ${({ theme }) => theme.colors.gray5};
`;

export default Price;
