import { useCallback, useEffect, useRef } from 'react';
import styled from 'styled-components';

function RangeSlider({
  min,
  max,
  minPrice,
  setMinPrice,
  maxPrice,
  setMaxPrice,
}) {
  const minPriceRef = useRef(min);
  const maxPriceRef = useRef(max);
  const range = useRef(null);

  const handleChangeLeft = (e) => {
    const price = Math.min(Number(e.target.value), maxPrice - 10000);
    setMinPrice(price);
    minPriceRef.current = price;
  };

  const handleChangeRight = (e) => {
    const price = Math.max(Number(e.target.value), minPrice + 10000);
    setMaxPrice(price);
    maxPriceRef.current = price;
  };

  const getPercent = useCallback(
    (price) => Math.round(((price - min) / (max - min)) * 100),
    [min, max]
  );

  useEffect(() => {
    const minPercent = getPercent(minPrice);
    const maxPercent = getPercent(maxPriceRef.current);

    if (range.current) {
      range.current.style.left = `${minPercent}%`;
      range.current.style.width = `${maxPercent - minPercent}%`;
    }
  }, [minPrice, getPercent]);

  useEffect(() => {
    const minPercent = getPercent(minPriceRef.current);
    const maxPercent = getPercent(maxPrice);

    if (range.current) {
      range.current.style.width = `${maxPercent - minPercent}%`;
    }
  }, [maxPrice, getPercent]);

  return (
    <RangeSliderContainer>
      <LeftInput
        type="range"
        min={min}
        max={max}
        value={minPrice}
        onChange={handleChangeLeft}
        className="thumb thumb-left"
      />
      <RightInput
        type="range"
        min={min}
        max={max}
        value={maxPrice}
        onChange={handleChangeRight}
        className="thumb thumb-right"
      />
      <Slider className="slider">
        <div className="slider-track" />
        <div ref={range} className="slider-range" />
      </Slider>
    </RangeSliderContainer>
  );
}

const RangeSliderContainer = styled.div`
  width: 100%;
  position: relative;

  .thumb::-webkit-slider-thumb {
    -webkit-appearance: none;
    background: url('./pause-circle.svg') no-repeat;
    border: none;
    border-radius: 50%;
    cursor: pointer;
    height: 24px;
    width: 24px;
    margin-top: 4px;
    pointer-events: all;
    position: relative;
  }
`;

const LeftInput = styled.input`
  -webkit-appearance: none;
  pointer-events: none;
  position: absolute;
  height: 0;
  width: 100%;
  outline: none;

  &::-webkit-slider-thumb {
    z-index: 3;
  }
`;

const RightInput = styled.input`
  -webkit-appearance: none;
  pointer-events: none;
  position: absolute;
  height: 0;
  width: 100%;
  outline: none;

  &::-webkit-slider-thumb {
    z-index: 4;
  }
`;

const Slider = styled.div`
  position: relative;
  margin: 0 auto;
  width: 100%;
  z-index: -1;

  .slider-track,
  .slider-range {
    border-radius: 3px;
    height: 5px;
    position: absolute;
  }
  .slider-track {
    background-color: ${({ theme }) => theme.colors.gray5};
    width: 100%;
    z-index: 1;
  }
  .slider-range {
    background-color: ${({ theme }) => theme.colors.gray1};
    z-index: 2;
  }
`;

export default RangeSlider;
