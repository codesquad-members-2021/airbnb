import { useRef } from 'react'
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

export const PersonnelBlock = (guestMsg:string) =>{
  return  (
  <div>
    <BarTitle>인원</BarTitle>
    <BarMessage>{guestMsg}</BarMessage>
  </div>
  )
}
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
  // export const totalPerson = selector({
  //   key: 'totalPersonnel',
  //    get({get}){
  //     const adult=get(personnelAudult)
  //     const child=get(personnelChild)
  //     const baby=get(personnelBaby)
  //     return {adult, child, baby}
  //   },
  //   set({set}, newValues:any){
  //     const {adult, child, baby} = newValues
  //     set(personnelAudult, adult)
  //     set(personnelChild, child)
  //     set(personnelBaby, baby)
  //   }
  // })




  // const RenderXbtn = useXclick(
  //   guestMsg,
  //   [setGuestMsg, setAdult, setChild, setBaby],
  //   defaultValue.guest
  // )
  const RenderXbtn = useXclick(
    guestMsg,
    [setGuestMsg, setTotalPersonnel],
    defaultValue.guest
  )

  return (
    <>
      <BarBlock ref={PersonnelToggle}>
        <BarInnerWrapper>
          {PersonnelBlock(guestMsg)}
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
