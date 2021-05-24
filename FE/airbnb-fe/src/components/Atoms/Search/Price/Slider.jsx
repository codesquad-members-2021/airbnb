import React, { useEffect, useState } from 'react';
import styled from 'styled-components';

const Slider = () => {
  const [min, max] = [0, 1000000];
  const [avg, setAvg] = useState((min + max) / 2);
  const [minPrice, setMinPrice] = useState(0);
  const [maxPrice, setMaxPrice] = useState(1000000);

  const thumbSize = 15;
  const width = 365;
  const leftWidth =
    thumbSize + ((avg - min) / (max - min)) * (width - 2 * thumbSize);

  const rightWidth =
    thumbSize + ((max - avg) / (max - min)) * (width - 2 * thumbSize);

  const leftPercent = ((minPrice - min) / (avg - min)) * 100;
  const rightPercent = ((maxPrice - avg) / (max - avg)) * 100;
  console.log(minPrice);
  useEffect(() => {
    setAvg((maxPrice + minPrice) / 2);
  }, [minPrice, maxPrice]);

  return (
    <SliderDiv>
      <LeftInput
        type="range"
        min={min}
        max={avg}
        leftWidth={leftWidth}
        leftPercent={leftPercent}
        value={minPrice}
        onChange={({ target }) => setMinPrice(Number(target.value))}
      />
      <RightInput
        type="range"
        min={avg}
        max={max}
        leftWidth={leftWidth}
        rightWidth={rightWidth}
        rightPercent={rightPercent}
        value={maxPrice}
        onChange={({ target }) => setMaxPrice(Number(target.value))}
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
    height: 0.3rem;
  }
  input::-webkit-slider-thumb {
    -webkit-appearance: none;
    appearance: none;
    width: 1.5rem;
    height: 1.5rem;
    background: white;
    cursor: pointer;
    border: 2px solid #000000;
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
