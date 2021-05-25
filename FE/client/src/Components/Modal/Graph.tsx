import React from 'react'
import styled from 'styled-components';
import { getOnePriceSize, GraphType, getLines, getSelectedLines } from '../../utils/graphUtil';

const Graph = ({ rangeState, priceArray }: GraphType) => {
  const priceCountArray = priceArray.map(price => price.length);
  const oneSize = getOnePriceSize({ priceCountArray });
  const line = getLines({ priceCountArray, oneSize });
  const selectedLine = getSelectedLines({ priceCountArray, oneSize, rangeState });

  return (
    <GraphWrapper>
      <svg viewBox="0 0 500 100" >
        <polyline
          fill="#E5E5E5"
          points={line}
        />
        <polyline
          fill="#000"
          points={selectedLine}
        />
      </svg>
    </GraphWrapper>
  )
}

export default Graph;

const GraphWrapper = styled.div`
`;
