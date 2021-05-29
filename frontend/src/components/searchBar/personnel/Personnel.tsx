import { useRef } from 'react'
import { useRecoilValue, useRecoilState } from 'recoil'
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
const Personnel = () => {
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
  adult + child + baby === 0
    ? setGuestMsg(defaultValue.guest)
    : setGuestMsg(`게스트 ${adult + child}명, 유아${baby}명`)
  const RenderXbtn = useXclick(guestMsg, [setAdult, setChild, setBaby], defaultValue.guest)

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
