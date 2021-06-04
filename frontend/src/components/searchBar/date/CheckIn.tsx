import React from 'react';
import { useRecoilState, useSetRecoilState } from 'recoil'
import {
  checkInMessage,
  clickCheckIn,
  clickCheckOut,
  defaultValue,
} from '../../../customHook/atoms'
import { BarBlock, BarInnerWrapper, BarTitle, BarMessage } from '../../../style/BarStyle'
import { FilterDateToString } from '../../../customHook/useDateInfo'
import useXclick from '../../../customHook/useXclick'
import { IProps } from '../../../Interface'

export const CheckInBlock = React.memo(({checkIn}:any) => {
  return  (<div>
  <BarTitle>체크인</BarTitle>
  <BarMessage>{FilterDateToString(checkIn)}</BarMessage>
</div>)
})

function CheckIn({ open, type, checkInToggle }: IProps) {
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
        <CheckInBlock checkIn={checkIn}/>
        <RenderXbtn />
      </BarInnerWrapper>
    </BarBlock>
  )
}

export default CheckIn
