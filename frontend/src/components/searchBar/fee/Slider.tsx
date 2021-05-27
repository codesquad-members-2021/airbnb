import { useRef, useEffect } from 'react'
import styled from 'styled-components'

function Slider({ data }: ISliderProps) {
  let inputRightVal: string
  let inputLeftVal: string
  const range = useRef<HTMLDivElement | null>(null)
  const btnLeft = useRef<HTMLDivElement | null>(null)
  const btnRight = useRef<HTMLDivElement | null>(null)
  const inputLeft = useRef<HTMLInputElement | null>(null)
  const inputRight = useRef<HTMLInputElement | null>(null)
  let percent = 0
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
    percent = ((parseInt(ctrlTarget.value) - min) / (max - min)) * 100

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
    percent = -((parseInt(ctrlTarget.value) - max) / (max - min)) * 100

    if (btnRight && btnRight.current) {
      btnRight.current.style.right = percent + '%'
    }
    if (range && range.current) {
      range.current.style.right = percent + '%'
    }
  }
  //!onChange 실패
  // function setMinValue(e: React.ChangeEvent<HTMLInputElement>) {
  //   const { target } = e
  //   let copyTarget = target
  //   let min = copyTarget.min
  //   let max = copyTarget.max
  //   copyTarget.value = String(Math.min(parseInt(copyTarget.value), 100))
  //   //let percent = ((parseInt(inputLeftVal) - min) / (max - min)) * 100
  // }

  return (
    <>
      <Box>
        <InputLeft ref={inputLeft} type='range' min='0' max='100' value='0' />
        <InputRight ref={inputRight} type='range' min='0' max='100' value='100' />
        <ExSlider className='slider'>
          <ExTrack className='track' />
          <ExRange ref={range} className='range' />
          <ExBtnLeft ref={btnLeft} className='thumb_left' move={percent} />
          <ExBtnRight ref={btnRight} className='thumb_right' />
        </ExSlider>
      </Box>
      {/* <CtrlSlide>
        <MinBtn>⫴</MinBtn>
        <MaxBtn>⫴</MaxBtn>
        <SlideBar slideLength={data.length}></SlideBar>
      </CtrlSlide> */}
    </>
  )
}
interface BtnProps {
  move: number
}
const ExInput = styled.input`
  position: absolute;
  z-index: 2;
  height: 10px;
  width: 100%;
`
const InputLeft = styled(ExInput)``
const InputRight = styled(ExInput)``
const Box = styled.div`
  position: relative;
  width: 50%;
  max-width: 500px;
  height: 100px;
  background-color: grey;
`
const ExSlider = styled.div`
  position: relative;
  z-index: 1;
  height: 10px;
  background-color: blue;
`
const ExTrack = styled.div`
  position: absolute;
  z-index: 1;
  left: 0;
  right: 0;
  top: 0;
  bottom: 0;
  border-radius: 5px;
  background-color: pink;
`
const ExRange = styled.div`
  position: absolute;
  z-index: 2;
  left: 0%;
  right: 0%;
  top: 0;
  bottom: 0;
  border-radius: 5px;
  background-color: green;
`
const Btn = styled.div`
  position: absolute;
  z-index: 3;
  width: 30px;
  height: 30px;
  background-color: yellow;
  border-radius: 50%;
  opacity: 0.3;
`
const ExBtnRight = styled(Btn)`
  right: 0%;
  transform: translate(15px, -10px);
`
const ExBtnLeft = styled(Btn)<BtnProps>`
  left: ${(props) => props.move}%;
  transform: translate(-15px, -10px);
`

interface ISliderProps {
  data: any[]
}
interface ISlider {
  slideLength: number
}
const MinBtn = styled.button`
  border-radius: 30px;
  border: 1px solid ${({ theme }) => theme.color.grey_2};
  position: absolute;
  left: 0%;
`
const MaxBtn = styled.button`
  border-radius: 30px;
  border: 1px solid ${({ theme }) => theme.color.grey_2};
  position: absolute;
  right: 0%;
`
const SlideBar = styled.div<ISlider>`
  display: flex;
  width: ${(props) => props.slideLength * 55}px;
  height: 3px;
  background-color: red;
`
const CtrlSlide = styled.div`
  display: flex;
  align-items: center;
  position: relative;
  top: -20px;
`
export default Slider
