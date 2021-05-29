import { RefObject } from 'react'
import { useRecoilState, useSetRecoilState } from 'recoil'
import {
  checkInMessage,
  clickCheckIn,
  clickCheckOut,
  defaultValue,
} from '../../../customHook/atoms'
import { BarBlock, BarInnerWrapper, BarTitle, BarMessage } from '../../../style/BarStyle'
import { dateToString } from '../../../customHook/useDateInfo'
import useXclick from '../../../customHook/useXclick'
interface IProps {
  open: boolean
  type: string
  checkInToggle: RefObject<HTMLDivElement>
}

const CheckIn: React.FunctionComponent<IProps> = ({ open, type, checkInToggle }) => {
  const [checkIn, setCheckIn] = useRecoilState(checkInMessage)
  const [checkInClicked, setCheckInClick] = useRecoilState(clickCheckIn)
  const setCheckOutClick = useSetRecoilState(clickCheckOut)

  const handleClick = () => {
    setCheckInClick(true)
    setCheckOutClick(false)
  }

  const RenderXbtn = useXclick(checkIn, [setCheckIn], defaultValue.checkIn)

  return (
    <BarBlock
      onClick={handleClick}
      clicked={checkInClicked && open}
      type={type}
      ref={checkInToggle}
    >
      <BarInnerWrapper>
        <div>
          <BarTitle>체크인</BarTitle>
          <BarMessage>{dateToString(checkIn)}</BarMessage>
        </div>
        <RenderXbtn />
      </BarInnerWrapper>
    </BarBlock>
  )
}

export default CheckIn
