import { useRef } from 'react'
import { useRecoilState } from 'recoil'
import {
  ModalWrapper,
  BarBlock,
  BarInnerWrapper,
  BarTitle,
  BarMessage,
} from '../../../style/BarStyle'
import {
  personnelAudult,
  personnelChild,
  personnelBaby,
  defaultValue,
  personnelMessage,
} from '../../../customHook/atoms'
import ModalPersonnel from './ModalPersonnel'
import useModalCtrl from '../../../customHook/useModalCtrlArray'
import useXclick from '../../../customHook/useXclick'

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

  const [adult, setAdult] = useRecoilState(personnelAudult)
  const [child, setChild] = useRecoilState(personnelChild)
  const [baby, setBaby] = useRecoilState(personnelBaby)
  const [guestMsg, setGuestMsg] = useRecoilState(personnelMessage)
  setGuestMsg(getGuestMsg(adult, child, baby))

  const RenderXbtn = useXclick(
    guestMsg,
    [setGuestMsg, setAdult, setChild, setBaby],
    defaultValue.guest
  )

  return (
    <>
      <BarBlock ref={PersonnelToggle}>
        <BarInnerWrapper>
          <div>
            <BarTitle>인원</BarTitle>
            <BarMessage>{guestMsg}</BarMessage>
          </div>
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
