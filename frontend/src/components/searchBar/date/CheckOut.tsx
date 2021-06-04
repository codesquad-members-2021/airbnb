import { useRecoilState, useSetRecoilState } from 'recoil'
import {
  checkOutMessage,
  clickCheckIn,
  clickCheckOut,
  defaultValue,
} from '../../../customHook/atoms'
import { FilterDateToString } from '../../../customHook/useDateInfo'
import { BarBlock, BarInnerWrapper, BarTitle, BarMessage } from '../../../style/BarStyle'
import useXclick from '../../../customHook/useXclick'
import { IProps } from '../../../Interface'

export const CheckOutBlock = (checkOut:any) => {
  return  (<div>
  <BarTitle>체크아웃</BarTitle>
  <BarMessage>{FilterDateToString(checkOut)}</BarMessage>
</div>)
}

function CheckOut({ open, type, checkOutToggle }: IProps) {
  const [checkOut, setCheckOut] = useRecoilState(checkOutMessage)
  const [checkOutnClicked, setCheckOutClick] = useRecoilState(clickCheckOut)
  const setCheckInClick = useSetRecoilState(clickCheckIn)

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
       {CheckOutBlock(checkOut)}
        <RenderXbtn />
      </BarInnerWrapper>
    </BarBlock>
  )
}

export default CheckOut
