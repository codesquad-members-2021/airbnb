import { useMemo } from 'react';
import styled from 'styled-components';
import { getOnePriceSize, GraphType, getLines, getSelectedLines } from '@/utils/graphUtil';

const Graph = ({ rangeState, priceArray }: GraphType) => {
  const priceCountArray = useMemo(() => priceArray.map(price => price.length), [priceArray]);
  const oneSize = useMemo(() => getOnePriceSize({ priceCountArray }), [priceCountArray]);
  const viewBoxPosition = useMemo(() => ({
    minX: 0,
    minY: 0,
    width: 500,
    height: 100
  }), []);
  // eslint-disable-next-line react-hooks/exhaustive-deps
  const line = useMemo(() => getLines({ priceCountArray, oneSize, viewBoxPosition }), [oneSize]);
  const selectedLine = getSelectedLines({ priceCountArray, oneSize, rangeState, viewBoxPosition });
  const { minX, minY, width, height } = viewBoxPosition;
  return (
    <GraphWrapper>
      <svg viewBox={`${minX} ${minY} ${width} ${height}`} >
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

const GraphWrapper = styled.div``;
