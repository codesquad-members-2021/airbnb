import React, { useEffect } from 'react';
import styled from 'styled-components';
import { useRecoilState, useSetRecoilState } from 'recoil';

import { priceRange, selectedPrice } from '@recoil/atoms/price';

interface positionY {
  value: number;
  maxYcount: number;
}

interface positionX {
  key: string;
  maxXcount: number;
}

const Graph = ({ priceContents }: any) => {
  const [priceSelectedByUser, setPriceSelectedByUser] =
    useRecoilState(selectedPrice);
  const [sliderPriceRange, setSliderPriceRange] = useRecoilState(priceRange);

  useEffect(() => {
    setPriceSelectedByUser(priceContents);
  }, []);

  const viewBoxData = {
    minWidth: '0',
    minHeight: '0',
    width: '500',
    height: '100',
  };

  const prices: number[] = [...priceContents];
  const { minWidth, minHeight, width, height } = viewBoxData;
  const sortedPrice = prices.sort((a, b) => a - b).filter((n) => n !== 0);
  const maxPrice = 100000;

  const getPriceRangeCount = (priceList: number[]) => {
    const minPrice = 2500;
    const scope = minPrice;
    const priceSet = priceList.reduce((acc: any, price) => {
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

  const getChartPoints = (priceList: any) => {
    let points = '';
    const priceSet = getPriceRangeCount(priceList);
    const { maxXcount, maxYcount } = getMaxCount(priceSet);
    for (const [key, value] of Object.entries(priceSet)) {
      if (typeof value !== 'number') break;
      const positionY = getPointPosition({ value, maxYcount });
      const xAxis = getXAxis({ key, maxXcount });
      points += `${xAxis}, ${positionY} `;
    }
    return points;
  };

  const getSelectedLine = (pricesSelected: number[]) => {
    if (pricesSelected.length === 0) return [];

    let points = '';
    const priceSet = getPriceRangeCount(sortedPrice);
    const selectedPriceSet = getPriceRangeCount(pricesSelected);
    const { maxXcount, maxYcount } = getMaxCount(priceSet);

    for (const [key, value] of Object.entries(selectedPriceSet)) {
      if (typeof value !== 'number') break;
      const positionY = getPointPosition({ value, maxYcount });
      const xAxis = getXAxis({ key, maxXcount });
      points += `${xAxis},${positionY} `;
    }

    const finalPoint = paintTheLastPoint(points);
    return finalPoint;
  };

  const paintTheLastPoint = (points: string) => {
    const pointSplited = points.split(' ');
    const firstPoint = pointSplited[0].split(',')[0] + ', 100 ';
    let lastPoint =
      pointSplited.slice(0, -1).slice(-1)[0].split(',')[0] + ',100';
    return firstPoint + points + lastPoint;
  };

  const handleSliderPrice = (e: React.ChangeEvent<HTMLInputElement>) => {
    const { name, value } = e.target;

    setSliderPriceRange({
      ...sliderPriceRange,
      [name]: Number(value),
    });
  };

  useEffect(() => {
    const { MIN_PRICE, MAX_PRICE } = sliderPriceRange;
    const newSelectPriceList = prices.filter(
      (price) => MIN_PRICE < price && price < MAX_PRICE
    );
    setPriceSelectedByUser(newSelectPriceList);
  }, [sliderPriceRange]);

  const chartPriceList = getChartPoints(sortedPrice);
  const select = getSelectedLine(priceSelectedByUser);

  return (
    <GraphContainer>
      <svg viewBox={`${minWidth} ${minHeight} ${width} ${height}`}>
        <polyline
          fill="gray"
          stroke="#11283b"
          strokeWidth="2"
          points={`${minWidth}, ${height} ${chartPriceList} ${width}, ${height}`}
        />
        <polyline
          fill="rgba(0,0,0,0.5)"
          points={`${minWidth}, ${height} ${select}`}
        />
      </svg>
      <Slider>
        <LeftSlider
          type="range"
          step="10"
          min="0"
          max={maxPrice}
          defaultValue="500"
          name="MIN_PRICE"
          onChange={handleSliderPrice}
        />
        <RightSlider
          type="range"
          step="10"
          min="0"
          max={maxPrice}
          defaultValue={maxPrice}
          name="MAX_PRICE"
          onChange={handleSliderPrice}
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
