import { ChangeEventHandler } from 'react';
import styled from 'styled-components';
import PauseCircleOutlineRoundedIcon from '@material-ui/icons/PauseCircleOutlineRounded';
import { SetterOrUpdater } from 'recoil';
import { RangeAtomType } from '../../recoil/atoms';

type SliderType = {
  rangeState: {
    left: number,
    right: number
  },
  setRangeState: SetterOrUpdater<RangeAtomType>
}

const Slider = ({ rangeState, setRangeState }: SliderType) => {
  const { left, right } = rangeState;

  const handleChange = (location: string): ChangeEventHandler<HTMLInputElement> => (event) => {
    const targetValue = parseInt(event.target.value, 10);
    const isLeft = location === 'left';
    const thisValue = isLeft ? Math.min(targetValue, right) : Math.max(left, targetValue);
    const percent = (thisValue - 0) / (100 - 0) * 100;
    setRangeState((rangeState) => {
      return isLeft ? { ...rangeState, left: percent } : { ...rangeState, right: percent };
    })
  }

  return (
    <SliderWrapper>
      <LeftRange type="range" min="0" max="100" onChange={handleChange('left')} value={left} />
      <RightRange type="range" min="0" max="100" onChange={handleChange('right')} value={right} />

      <SliderTrack />
      <SliderRange style={{ left: `${left}%`, right: `calc( ${100 - right}%)` }} />
      <PauseCircleOutlineRoundedIcon style={{
        position: 'absolute', left: `calc(${left}% - 2.5%)`,
        top: '-7px', background: '#fff', borderRadius: '50%', zIndex: 1
      }} />

      <PauseCircleOutlineRoundedIcon style={{
        position: 'absolute', right: `calc(${100 - right}% - 2.5%)`,
        top: '-7px', background: '#fff', borderRadius: '50%', zIndex: 1
      }} />

    </SliderWrapper>
  )
}

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
