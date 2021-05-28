import { useState, useRef, useEffect } from 'react'
import styled from 'styled-components'

interface ISliderProps {
  data: any[]
}

interface IBoxProps {
  slideLength: number
}
function Slider({ data }: ISliderProps) {
  const [rightBtnMin, setRightBtnMin] = useState(0)
  let inputRightVal: string
  let inputLeftVal: string
  const range = useRef<HTMLDivElement | null>(null)
  const btnLeft = useRef<HTMLDivElement | null>(null)
  const btnRight = useRef<HTMLDivElement | null>(null)
  const inputLeft = useRef<HTMLInputElement | null>(null)
  const inputRight = useRef<HTMLInputElement | null>(null)

  let slideLength = data.length * 50
  let minValue = data[0][0]
  let maxValue = data[data.length - 1][0]
  useEffect(() => {
    if (inputRight && inputRight.current) {
      inputRightVal = inputRight.current.value
      inputRight.current.addEventListener('input', () => setMaxValue(inputRight.current))
    }
    if (inputLeft && inputLeft.current) {
      inputLeftVal = inputLeft.current.value
      inputLeft.current.addEventListener('input', () => setMinValue(inputLeft.current))
    }
    return () => {
      if (inputLeft && inputLeft.current) {
        inputLeft.current.removeEventListener('input', () => setMinValue(inputLeft.current))
      }
      if (inputRight && inputRight.current) {
        inputRight.current.removeEventListener('input', () => setMaxValue(inputRight.current))
      }
    }
  }, [])

  function setMinValue(target: HTMLInputElement | null) {
    if (!target) return
    let ctrlTarget = target
    let min = parseInt(ctrlTarget.min)
    let max = parseInt(ctrlTarget.max)
    ctrlTarget.value = String(Math.min(parseInt(ctrlTarget.value), parseInt(inputRightVal)))
    setRightBtnMin(parseInt(ctrlTarget.value))
    let percent = ((parseInt(ctrlTarget.value) - min) / (max - min)) * 100

    if (btnLeft && btnLeft.current) {
      btnLeft.current.style.left = percent + '%'
    }
    if (range && range.current) {
      range.current.style.left = percent + '%'
    }
  }

  function setMaxValue(target: HTMLInputElement | null) {
    if (!target) return
    let ctrlTarget = target
    let min = parseInt(ctrlTarget.min)
    let max = parseInt(ctrlTarget.max)
    ctrlTarget.value = String(Math.max(parseInt(ctrlTarget.value), parseInt(inputLeftVal)))
    let percent = -((parseInt(ctrlTarget.value) - max) / (max - min)) * 100

    if (btnRight && btnRight.current) {
      btnRight.current.style.right = percent + '%'
    }
    if (range && range.current) {
      range.current.style.right = percent + '%'
    }
  }

  return (
    <>
      <SliderBox slideLength={slideLength}>
        <Input ref={inputLeft} type='range' min={minValue} max={maxValue} defaultValue='0' />
        <Input ref={inputRight} type='range' min={minValue} max={maxValue} defaultValue='100' />
        <SliderView className='slider'>
          <Track className='track' />
          <Range ref={range} className='range' />
          <BtnLeft ref={btnLeft}>⫴</BtnLeft>
          <BtnRight ref={btnRight}>⫴</BtnRight>
        </SliderView>
      </SliderBox>
    </>
  )
}

const SliderBox = styled.div<IBoxProps>`
  position: relative;
  width: ${(props) => props.slideLength}px;
  max-width: 500px;
`
const Input = styled.input`
  position: absolute;
  z-index: 2;
  height: 10px;
  width: 100%;
  -webkit-appearance: none;
  appearance: none;
  pointer-events: none;
  opacity: 0;
  &::-webkit-slider-thumb {
    appearance: none;
    pointer-events: all;
    width: 30px;
    height: 30px;
    background-color: red;
    -webkit-appearance: none;
  }
`

const SliderView = styled.div`
  position: relative;
  z-index: 1;
  height: 10px;
`
const Track = styled.div`
  position: absolute;
  z-index: 1;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  border-radius: 5px;
  background-color: red;
`
const Range = styled.div`
  position: absolute;
  z-index: 2;
  left: 0%;
  right: 0%;
  top: 0;
  bottom: 0;
  border-radius: 5px;
  background-color: rgba(0, 0, 0, 0.5);
`
const Btn = styled.div`
  position: absolute;
  z-index: 3;
  width: 30px;
  height: 30px;
  text-align: center;
  color: ${({ theme }) => theme.color.grey_3};
  background-color: ${({ theme }) => theme.color.grey_1};
  border-radius: 50%;
`
const BtnRight = styled(Btn)`
  right: 0%;
  transform: translate(5px, -10px);
`
const BtnLeft = styled(Btn)`
  left: 0%;
  transform: translate(0px, -10px);
`

export default Slider
