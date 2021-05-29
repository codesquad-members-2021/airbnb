import { RefObject } from 'react'
import { useRecoilState, useSetRecoilState } from 'recoil'
import {
  checkOutMessage,
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
  checkOutToggle: RefObject<HTMLDivElement>
}

const CheckOut: React.FunctionComponent<IProps> = ({ open, type, checkOutToggle }) => {
  const [checkOut, setCheckOut] = useRecoilState(checkOutMessage)
  const setCheckInClick = useSetRecoilState(clickCheckIn)
  const [checkOutnClicked, setCheckOutClick] = useRecoilState(clickCheckOut)

  const handleClick = () => {
    setCheckInClick(false)
    setCheckOutClick(true)
  }

  const RenderXbtn = useXclick(checkOut, [setCheckOut], defaultValue.checkOut)

  return (
    <BarBlock
      onClick={handleClick}
      clicked={checkOutnClicked && open}
      type={type}
      ref={checkOutToggle}
    >
      <BarInnerWrapper>
        <div>
          <BarTitle>체크아웃</BarTitle>
          <BarMessage>{dateToString(checkOut)}</BarMessage>
        </div>
        <RenderXbtn />
      </BarInnerWrapper>
    </BarBlock>
  )
}

export default CheckOut
