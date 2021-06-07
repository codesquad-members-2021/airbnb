import styled from "styled-components";
import { useState, useRef } from "react";
import { useRecoilState } from "recoil";
import { roomPriceState } from "recoil/Atoms";

//작성중인 미완성 컴포넌트 입니다. ㅠㅠㅠ

function PriceRange() {
  const [leftValue, setLeftValue] = useState("");
  const [rightValue, setRightValue] = useState("");
  const $leftInput = useRef<HTMLInputElement>(null);
  const $rightInput = useRef<HTMLInputElement>(null);
  const [roomPrice, setRoomPrice] = useRecoilState(roomPriceState);
  const $leftRange = useRef(null);
  const $rightRange = useRef(null);

  function handleRight(e: React.ChangeEvent<HTMLInputElement>) {
    const target = e.target;
    const min = parseInt(target.min);
    const max = parseInt(target.max);
    const value = Math.min();
    const rightValue: number | null = Number($rightInput.current?.value);
    setRoomPrice({ ...roomPrice, max: rightValue });
  }

  function handleLeft(e: React.ChangeEvent<HTMLInputElement>) {
    const target = e.target;
    const { value, min, max } = target;
    const leftValue: number | null = Number($leftInput.current?.value);

    setRoomPrice({ ...roomPrice, min: leftValue });
  }

  return (
    <PriceRangeLayout>
      <div className="multi-range-slider">
        <RangeInputLeft
          type="range"
          id="input-left"
          min="0"
          max="25000"
          onChange={handleLeft}
          ref={$leftInput}
          step="100"
          className="thumb"
        />
        <RangeInputRight
          type="range"
          id="input-right"
          min="25000"
          max="50000"
          onChange={handleRight}
          ref={$rightInput}
          step="100"
          className="thumb"
        />
        <Slider>
          <Track />
          <RangeLeft ref={$leftRange} />
          <RangeRight ref={$rightRange} />
          <ThumbLeft />
          <ThumbRight />
        </Slider>
      </div>
    </PriceRangeLayout>
  );
}

const PriceRangeLayout = styled.div`
  width: 100%;
  position: relative;
  .thumb::-webkit-slider-thumb {
    -webkit-appearance: none;
    border: none;
    border-radius: 50%;
    cursor: pointer;
    height: 24px;
    width: 24px;
    pointer-events: all;
  }
`;
const Slider = styled.div`
  position: relative;
  z-index: 1;
  height: 5px;
  margin: 0;
`;
const Track = styled.div`
  position: absolute;
  z-index: 1;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  border-radius: 5px;
  background-color: #959595;
`;
const RangeRight = styled.div`
  position: absolute;
  z-index: 2;
  left: 75%; //여기
  right: 0%; // 여기
  bottom: 0;
  height: 100px;

  opacity: 90%;

  background-color: #fcf8f8;
`;
const RangeLeft = styled.div`
  position: absolute;
  z-index: 2;
  left: 0%; //여기
  right: 75%; // 여기
  bottom: 0;
  height: 100px;

  opacity: 90%;

  background-color: #fcf8f8;
`;
const ThumbLeft = styled.div`
  position: absolute;
  z-index: 3;
  width: 25px;
  height: 25px;
  background-color: #cfcdcd;
  border: white 1px solid;
  border-radius: 50%;
  box-shadow: 0 0 0 0 rgba(98, 0, 238, 0.1);
  transition: box-shadow 0.3s ease-in-out;

  left: 25%; //여기
  transform: translate(-15px, -10px);
`;
const ThumbRight = styled.div`
  position: absolute;
  right: 25%; //여기
  transform: translate(15px, -10px);
  z-index: 3;
  width: 25px;
  height: 25px;
  background-color: #cfcdcd;
  border: white 1px solid;

  border-radius: 50%;
  box-shadow: 0 0 0 0 rgba(98, 0, 238, 0.1);
  transition: box-shadow 0.3s ease-in-out;

  right: 25%;
  transform: translate(15px, -10px);
`;
const RangeInputLeft = styled.input`
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
const RangeInputRight = styled.input`
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

export default PriceRange;
