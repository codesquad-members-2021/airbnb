import styled from "styled-components";
import { useState, useRef } from "react";
import { useRecoilState } from "recoil";
import { roomPriceState } from "recoil/Atoms";
function PriceRange() {
  const [leftValue, setLeftValue] = useState("");
  const [rightValue, setRightValue] = useState("");
  const $leftInput = useRef<HTMLInputElement>(null);
  const $rightInput = useRef<HTMLInputElement>(null);
  const [roomPrice, setRoomPrice] = useRecoilState(roomPriceState);

  function handleLeft(e: React.ChangeEvent<HTMLInputElement>) {
    // var _this = inputLeft; //elem
    const target = e.target;
    const { value, min, max } = target;
    // const rightValue: number | null = Number($rightInput.current?.value);
    const leftValue: number | null = Number($leftInput.current?.value);
    leftValue && setRoomPrice({ ...roomPrice, min: leftValue });
    console.log(leftValue);
    // leftValue && setRoomPrice({ ...roomPrice, min: leftValue });
    //console.log(value, min, max);
    //console.log($rightInput.current?.value);
    //console.log($leftInput.current?.value);
  }
  function handleRight(e: React.ChangeEvent<HTMLInputElement>) {
    // var _this = inputLeft; //elem
    const target = e.target;
    const { value, min, max } = target;
    const rightValue: number | null = Number($rightInput.current?.value);
    // const leftValue: number | null = Number($leftInput.current?.value);
    console.log("right", rightValue);
    rightValue && setRoomPrice({ ...roomPrice, max: rightValue });

    console.log(rightValue);
  }

  // function handleRightValue(e: React.ChangeEvent<HTMLInputElement>) {
  //   // var _this = inputLeft; //elem
  //   const target = e.target;
  //   const { value, min, max } = target;
  //   setRightValue(value);
  //   console.log(value, min, max);
  // }

  // const handlePriceRange = (e: React.ChangeEvent<HTMLInputElement>): void => {
  //   console.log(e.target.value); //바로 반영되는게 맞긴 함 근데 기준이 있었으면 좋겠는데?
  // };
  return (
    <PriceRangeLayout>
      <div className="multi-range-slider">
        <RangeInputLeft
          type="range"
          id="input-left"
          min="0"
          max="50"
          onChange={handleLeft}
          ref={$leftInput}
        />
        <RangeInputRight
          type="range"
          id="input-right"
          min="50"
          max="100"
          onChange={handleRight}
          ref={$rightInput}
        />
        <SliderContainer>
          <Track />
          <Range />
          <ThumbLeft />
          <ThumbRight />
        </SliderContainer>
      </div>
    </PriceRangeLayout>
  );
}

const PriceRangeLayout = styled.div``;
const SliderContainer = styled.div`
  position: relative;
  z-index: 1;
  height: 10px;
  margin: 0 15px;
`;
const Track = styled.div`
  position: absolute;
  z-index: 1;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  border-radius: 5px;
  background-color: #c6aee7;
`;
const Range = styled.div`
  position: absolute;
  z-index: 2;
  left: 25%;
  right: 25%;
  top: 0;
  bottom: 0;
  border-radius: 5px;
  background-color: #6200ee;
`;
const ThumbLeft = styled.div`
  position: absolute;
  left: 25%; //여기를 바꿔줘야 함
  transform: translate(-15px, -10px);
  z-index: 3;
  width: 30px;
  height: 30px;
  background-color: #6200ee;
  border-radius: 50%;
  box-shadow: 0 0 0 0 rgba(98, 0, 238, 0.1);
  transition: box-shadow 0.3s ease-in-out;
`;
const ThumbRight = styled.div`
  position: absolute;
  right: 25%;
  transform: translate(15px, -10px);
  z-index: 3;
  width: 30px;
  height: 30px;
  background-color: #6200ee;
  border-radius: 50%;
  box-shadow: 0 0 0 0 rgba(98, 0, 238, 0.1);
  transition: box-shadow 0.3s ease-in-out;
`;
const RangeInputLeft = styled.input`
  position: absolute;
  pointer-events: none;
  -webkit-appearance: none;
  z-index: 2;
  height: 10px;
  width: 30rem;
  /* opacity: 0; */
  &::-webkit-slider-thumb {
    pointer-events: all;
    width: 30px;
    height: 30px;
    border-radius: 0;
    border: 0 none;
    background-color: #ffc400;
    -webkit-appearance: none;
  }
`;
const RangeInputRight = styled.input`
  position: absolute;
  pointer-events: none;
  -webkit-appearance: none;
  z-index: 2;
  height: 10px;
  width: 30rem;
  /* opacity: 0; */
  &::-webkit-slider-thumb {
    pointer-events: all;
    width: 30px;
    height: 30px;
    border-radius: 0;
    border: 0 none;
    background-color: #00ff62;
    -webkit-appearance: none;
  }
`;

export default PriceRange;
