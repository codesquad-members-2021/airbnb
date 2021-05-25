import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import Slider from './Slider';

const PriceChart = () => {
  return (
    <PriceChartViewDiv>
      <div>wow</div>
      <div>wow</div>
      <div>wow</div>
      <div>wow</div>
      <Slider />
    </PriceChartViewDiv>
  );
};
const PriceChartViewDiv = styled.div`
  position: relative;
  border: 1px solid red;
  margin-top: 2.31rem;
  height: 6.25rem;
`;

export default PriceChart;
