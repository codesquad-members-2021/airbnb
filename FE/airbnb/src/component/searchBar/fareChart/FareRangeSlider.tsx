import React, { useState } from "react";
import styled from "styled-components";
import { useSetRecoilState } from "recoil";
import { thumbLeftPriceState, thumbRightPriceState, isSetPriceState } from "state/atoms/fareAtoms";
import { ReactComponent as ThumbLeft } from "assets/pause_circle.svg";
import { ReactComponent as ThumbRight } from "assets/pause_circle.svg";

const RANGE_DATA = {
  MIN: 0,
  MAX: 100,
};

interface Props {
  minPrice: number;
  maxPrice: number;
}

function FareRangeSlider({ minPrice, maxPrice }: Props) {
  const { MIN, MAX } = RANGE_DATA;
  const [leftValue, setLeftValue] = useState(MIN);
  const [rightValue, setRightValue] = useState(MAX);
  const [thumbLeftPos, setThumbLeftPos] = useState(MIN);
  const [thumbRightPos, setThumbRightPos] = useState(MAX);
  const setLeftPrice = useSetRecoilState(thumbLeftPriceState);
  const setRightPrice = useSetRecoilState(thumbRightPriceState);
  const setIsSetPrice = useSetRecoilState(isSetPriceState);
  const perValuePrice = (maxPrice - minPrice) / MAX;

  const setThumbPosition = (value: number, setState: (percent: number) => void) => {
    const percent = ((value - MIN) / (MAX - MIN)) * 100;
    setState(percent);
  };

  const handleInputLeftThumb = (e: React.ChangeEvent<HTMLInputElement>) => {
    const target = e.target as HTMLInputElement;
    target.value = Math.min(parseInt(target.value), parseInt(`${rightValue}`) - 1).toString();
    const value = +target.value;
    setLeftValue(value);
    setThumbPosition(value, setThumbLeftPos);
    setIsSetPrice(true);
    if (value === MIN) setLeftPrice(minPrice);
    else setLeftPrice(perValuePrice * value);
  };
  const handleInputRightThumb = (e: React.ChangeEvent<HTMLInputElement>) => {
    const target = e.target as HTMLInputElement;
    target.value = Math.max(parseInt(target.value), parseInt(`${leftValue}`) + 1).toString();
    const value = +target.value;
    setRightValue(value);
    setThumbPosition(value, setThumbRightPos);
    setIsSetPrice(true);
    if (value === MAX) setRightPrice(maxPrice);
    else setRightPrice(perValuePrice * value);
  };

  return (
    <FareSliderBox>
      <input type="range" min={MIN} max={MAX} value={leftValue} onChange={handleInputLeftThumb} />
      <input type="range" min={MIN} max={MAX} value={rightValue} onInput={handleInputRightThumb} />
      <ClearSlider thumbLeftPos={thumbLeftPos} thumbRightPos={thumbRightPos}>
        <ThumbLeft className="thumb left" />
        <ThumbRight className="thumb right" />
      </ClearSlider>
      <LeftWindow leftValue={leftValue} />
      <RightWindow rightValue={rightValue} />
    </FareSliderBox>
  );
}

export default FareRangeSlider;

const FareSliderBox = styled.div`
  width: 300px;
  height: 20px;
  position: relative;
  & > input[type="range"] {
    position: absolute;
    pointer-events: none;
    appearance: none;
    z-index: 2;
    height: 10px;
    width: 100%;
    opacity: 0;
  }
  & > input[type="range"]::-webkit-slider-thumb {
    pointer-events: all;
    width: 30px;
    height: 30px;
    border-radius: 0;
    border: 0 none;
    background-color: red;
    cursor: pointer;
  }
`;

interface ClearSliderType {
  thumbLeftPos: number;
  thumbRightPos: number;
}

const ClearSlider = styled.div<ClearSliderType>`
  height: 10px;
  z-index: 1;
  position: relative;
  .thumb {
    position: absolute;
    z-index: 3;
    fill: #fff;
    path {
      stroke: ${({ theme }) => theme.color.gray1};
    }
  }
  .left {
    left: ${({ thumbLeftPos }) => `${thumbLeftPos}%`};
    transform: translate(-50%, -10px);
  }
  .right {
    right: ${({ thumbRightPos }) => `${100 - thumbRightPos}%`};
    transform: translate(50%, -10px);
  }
`;

interface LeftWindowType {
  leftValue: number;
}
interface RightWindowType {
  rightValue: number;
}

const LeftWindow = styled.div<LeftWindowType>`
  width: ${({ leftValue }) => `${leftValue * 3}px`};
  height: 120px;
  background-color: rgba(255, 255, 255, 0.5);
  position: absolute;
  top: -120px;
  left: 0;
`;

const RightWindow = styled.div<RightWindowType>`
  width: ${({ rightValue }) => `${(100 - rightValue) * 3}px`};
  height: 120px;
  background-color: rgba(255, 255, 255, 0.5);
  position: absolute;
  top: -120px;
  right: 0;
`;
