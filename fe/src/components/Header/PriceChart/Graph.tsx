import styled from 'styled-components';

import { prices } from './testPrice';

interface price {
  [key: number]: number;
}

interface positionY {
  value: number;
  maxYcount: number;
}

interface positionX {
  key: string;
  maxXcount: number;
}

const Graph = () => {
  const viewBoxData = {
    minWidth: '0',
    minHeight: '0',
    width: '500',
    height: '100',
  };

  //get Xscale = width / 50
  const DIVIDER = 1000;

  const { minWidth, minHeight, width, height } = viewBoxData;

  const sortedPrice = prices.sort((a, b) => a - b).filter((n) => n !== 0);
  const maxPrice = sortedPrice[sortedPrice.length - 1];

  const getAveragePrice = () => {
    const sum = sortedPrice.reduce((prev, curr) => prev + curr, 0);
    return Math.ceil(sum / sortedPrice.length);
  };

  //   const getAxisGridNumber = (num: number) => Number(width) / num;

  const getPriceRangeCount = () => {
    // const girdXLineNumber = getAxisGridNumber(DIVIDER);
    // const xScale = Number(width) / girdXLineNumber;
    let minPrice = sortedPrice[0];
    if (minPrice < 2500) minPrice = 2500;

    const scope = minPrice;
    const priceSet = sortedPrice.reduce((acc: any, price) => {
      let value = Math.floor(price / scope);

      if (!acc[value]) {
        acc[value] = 1;
        return acc;
      } else {
        acc[value]++;
        return acc;
      }
    }, {});
    return priceSet;
  };

  const getPointPosition = ({ value, maxYcount }: positionY): number => {
    return Number(height) - Math.ceil((value / maxYcount) * 100);
  };

  const getXAxis = ({ key, maxXcount }: positionX) => {
    return maxXcount === 0
      ? 0
      : `${Math.ceil((Number(key) / maxXcount) * Number(width))}`;
  };

  const getMaxCount = (priceSet: any) => {
    let maxYcount = 0;
    let maxXcount = 0;
    for (const [key, value] of Object.entries(priceSet)) {
      if (typeof value !== 'number') break;
      maxXcount = Math.max(maxXcount, Number(key));
      maxYcount = Math.max(maxYcount, value);
    }
    return { maxXcount, maxYcount };
  };

  const getChartPoints = () => {
    let points = '';
    const priceSet = getPriceRangeCount();
    const { maxXcount, maxYcount } = getMaxCount(priceSet);
    console.log(maxYcount);
    // const XScale = Number(width) / DIVIDER;
    for (const [key, value] of Object.entries(priceSet)) {
      if (typeof value !== 'number') break;
      const positionY = getPointPosition({ value, maxYcount });
      const xAxis = getXAxis({ key, maxXcount });
      //   const xAxis = `${Number(key) * XScale}`;
      points += `${xAxis}, ${positionY} `;
    }
    return points;
  };

  return (
    <GraphContainer>
      <svg viewBox={`${minWidth} ${minHeight} ${width} ${height}`}>
        <polyline
          fill="black"
          stroke="#11283b"
          //   strokeWidth="2"
          points={`${minWidth}, ${height} ${getChartPoints()} ${width}, ${height}`}
        />
      </svg>
      <Slider>
        <LeftSlider
          type="range"
          step="10"
          min="0"
          max={maxPrice}
          defaultValue="500"
          name="leftSlider"
        />
        <RightSlider
          type="range"
          step="10"
          min="0"
          max={maxPrice}
          defaultValue={maxPrice}
          name="rightSlider"
        />
      </Slider>
    </GraphContainer>
  );
};

export default Graph;

const GraphContainer = styled.div`
  position: relative;
`;

const Slider = styled.div`
  input[type='range'] {
    width: 110%;
    height: 1px;
    pointer-events: none;
    position: absolute;
    bottom: -14%;
    left: -5%;
    cursor: pointer;
    -webkit-appearance: none;
  }

  input[type='range']::-webkit-slider-thumb {
    pointer-events: all;
    position: relative;
    z-index: 1;
    -webkit-appearance: none;
    width: 25px;
    height: 25px;
    background: url('./pause-circle.svg') no-repeat;
  }
`;

const LeftSlider = styled.input``;

const RightSlider = styled.input``;
