import React, { useEffect, useState, useContext } from 'react';
import styled from 'styled-components';
import { SearchContext } from '../../Search';

const Slider = () => {
  const { priceData, priceDispatch } = useContext(SearchContext);
  const [min, max] = [0, 1000000];
  const [avg, setAvg] = useState((min + max) / 2);

  const thumbSize = 24;
  const width = 365;
  const leftWidth =
    thumbSize + ((avg - min) / (max - min)) * (width - 2 * thumbSize);

  const rightWidth =
    thumbSize + ((max - avg) / (max - min)) * (width - 2 * thumbSize);

  const leftPercent = ((priceData.minPrice - min) / (avg - min)) * 100;
  const rightPercent = ((priceData.maxPrice - avg) / (max - avg)) * 100;

  useEffect(() => {
    setAvg((priceData.maxPrice + priceData.minPrice) / 2);
  }, [priceData.minPrice, priceData.maxPrice]);

  const handleMinSliderChange = ({ target }) =>
    priceDispatch({ type: 'SET_MIN', payload: parseInt(target.value) });

  const handleMaxSliderChange = ({ target }) => {
    priceDispatch({ type: 'SET_MAX', payload: parseInt(target.value) });
  };

  return (
    <SliderDiv>
      <LeftInput
        type="range"
        min={min}
        max={avg}
        leftWidth={leftWidth}
        leftPercent={leftPercent}
        value={priceData.minPrice}
        onChange={({ target }) => handleMinSliderChange({ target })}
      />
      <RightInput
        type="range"
        min={avg}
        max={max}
        leftWidth={leftWidth}
        rightWidth={rightWidth}
        rightPercent={rightPercent}
        value={priceData.maxPrice}
        onChange={({ target }) => handleMaxSliderChange({ target })}
      />
    </SliderDiv>
  );
};

const SliderDiv = styled.div`
  position: relative;
  width: 200px;
  text-align: center;
  input {
    border: none;
    height: 0.05rem;
  }
  input::-webkit-slider-thumb {
    -webkit-appearance: none;
    appearance: none;
    width: 1.5rem;
    height: 1.5rem;
    background: white;
    cursor: pointer;
    border: 2px solid #333;
    border-radius: 100%;
  }
`;

const LeftInput = styled.input`
  position: absolute;
  left: 0;
  width: ${({ leftWidth }) => `${leftWidth}px`};
  -webkit-appearance: none;
  background-image: linear-gradient(
    to right,
    #e5e5e5 0%,
    #e5e5e5 ${({ leftPercent }) => `${leftPercent}%`},
    #333333 ${({ leftPercent }) => `${leftPercent}%`},
    #333333 100%
  );
`;
const RightInput = styled.input`
  position: absolute;
  left: ${({ leftWidth }) => `${leftWidth}px`};
  width: ${({ rightWidth }) => `${rightWidth}px`};
  -webkit-appearance: none;
  background-image: linear-gradient(
    to right,
    #333333 0%,
    #333333 ${({ rightPercent }) => `${rightPercent}%`},
    #e5e5e5 ${({ rightPercent }) => `${rightPercent}%`},
    #e5e5e5 100%
  );
`;
export default Slider;
