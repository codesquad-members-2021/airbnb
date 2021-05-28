import { ChangeEventHandler, useCallback } from 'react';
import styled from 'styled-components';
import PauseCircleOutlineRoundedIcon from '@material-ui/icons/PauseCircleOutlineRounded';
import { SetterOrUpdater } from 'recoil';
import { RangeAtomType } from '@/recoil/atoms';
import { RangeStateType } from '@Components/commons/baseType';
import { makeStyles } from '@material-ui/core';

type SliderType = RangeStateType & {
  setRangeState: SetterOrUpdater<RangeAtomType>
}

const Slider = ({ rangeState, setRangeState }: SliderType) => {
  const { leftRange, rightRange } = rangeState;
  const buttonStyle = ButtonStyle();

  const handleChange = useCallback((location: string): ChangeEventHandler<HTMLInputElement> => (event) => {
    const targetValue = parseInt(event.target.value, 10);
    const isLeft = location === 'left';
    setRangeState((rangeState) => {
      const { leftRange, rightRange } = rangeState;
      const percent = isLeft ? Math.min(targetValue, rightRange) : Math.max(leftRange, targetValue);
      return isLeft ? { ...rangeState, leftRange: percent } : { ...rangeState, rightRange: percent };
    })
  }, []);

  return (
    <SliderWrapper>
      <LeftRange type="range" min="0" max="100" onChange={handleChange('left')} value={leftRange} />
      <RightRange type="range" min="0" max="100" onChange={handleChange('right')} value={rightRange} />

      <SliderTrack />
      <SliderRange style={{ left: `${leftRange}%`, right: `calc( ${100 - rightRange}%)` }} />
      <PauseCircleOutlineRoundedIcon
        className={buttonStyle.slider}
        style={{ left: `calc(${leftRange}% - 2.5%)` }} />

      <PauseCircleOutlineRoundedIcon
        className={buttonStyle.slider}
        style={{ right: `calc(${100 - rightRange}% - 2.5%)` }} />

    </SliderWrapper>
  )
}

const ButtonStyle = makeStyles({
  slider: {
    position: 'absolute',
    top: '-7px',
    background: '#fff',
    borderRadius: '50%',
    zIndex: 1
  }
});

const LeftRange = styled.input`
  position: absolute;
  width: 100%;
  z-index:2;
  pointer-events: none;
  bottom:-12px;
  opacity:0;

  &::-webkit-slider-thumb{
    cursor:pointer;
    pointer-events: all;
    position:relative;
    border:1px solid #000;
    border-width:20px;
  }
`;

const RightRange = styled.input`
  position: absolute;
  width: 100%;
  z-index:2;
  pointer-events: none;
  bottom:-12px;
  opacity:0;
  &::-webkit-slider-thumb{
    cursor:pointer;
    pointer-events: all;
    position:relative;
    border:1px solid #000;
    border-width:20px;
  }
`;

const SliderWrapper = styled.div`
  position: relative;
  height: 10px;
`;

const SliderTrack = styled.div`
  position: absolute;
  left:0;
  right:0;
  top:0;
  bottom:0;
  background: #E5E5E5;
  border-radius:5px;
`;

const SliderRange = styled.div`
  position: absolute;
  top:0;
  bottom:0;
  background: #000;
`;

export default Slider;
