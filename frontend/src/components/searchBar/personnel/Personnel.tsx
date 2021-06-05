import React, { useRef } from 'react'
import { useRecoilState, useRecoilValue, useSetRecoilState } from 'recoil'
import {
  ModalWrapper,
  BarBlock,
  BarInnerWrapper,
  BarTitle,
  BarMessage,
} from '../../../style/BarStyle'
import {
  totalPerson,
  filterPersonnelMessage,
  defaultValue,
  personnelMessage,
} from '../../../customHook/atoms'
import ModalPersonnel from './ModalPersonnel'
import useModalCtrl from '../../../customHook/useModalCtrlArray'
import useXclick from '../../../customHook/useXclick'
interface IPersonnel {
  guestMsg : string
}

export const PersonnelBlock = React.memo(({guestMsg}:IPersonnel) =>{
  return  (
  <div>
    <BarTitle>인원</BarTitle>
    <BarMessage>{guestMsg}</BarMessage>
  </div>
  )
})

export const getGuestMsg = (adult: number, child: number, baby: number) => {
  adult = Number(adult)
  child = Number(child)
  baby = Number(baby)
  return adult + child + baby !== 0
    ? `게스트 ${adult + child}명, 유아${baby}명`
    : defaultValue.guest
}

function Personnel() {
  const PersonnelToggle = useRef<HTMLDivElement>(null)
  const PersonnelModal = useRef<HTMLDivElement>(null)
  const open = useModalCtrl({
    toggle: [PersonnelToggle],
    modal: PersonnelModal,
    init: false,
  })
  
  const  setTotalPersonnel = useSetRecoilState(totalPerson)
  const [guestMsg, setGuestMsg] = useRecoilState(personnelMessage)
  const filteredMsg = useRecoilValue(filterPersonnelMessage)
  setGuestMsg(filteredMsg)
  
  const RenderXbtn = useXclick(
    guestMsg,
    [setGuestMsg, setTotalPersonnel],
    defaultValue.guest
  )

  return (
    <>
      <BarBlock ref={PersonnelToggle}>
        <BarInnerWrapper>
          <PersonnelBlock guestMsg={guestMsg}/>
          <RenderXbtn />
        </BarInnerWrapper>
      </BarBlock>
      {open && (
        <ModalWrapper ref={PersonnelModal} modalType={'personnel'}>
          <ModalPersonnel modalType={'personnel'} />
        </ModalWrapper>
      )}
    </>
  )
}
export default Personnel
