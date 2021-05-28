import { useRef } from 'react'
import { useRecoilValue } from 'recoil'
import {
  ModalWrapper,
  BarBlock,
  BarInnerWrapper,
  BarTitle,
  BarMessage,
} from '../../../style/BarStyle'
import { personnelAudult, personnelChild, personnelBaby } from '../../../customHook/atoms'
import ModalPersonnel from './ModalPersonnel'
import useModalCtrl from '../../../customHook/useModalCtrlArray'

const Personnel = () => {
  const PersonnelToggle = useRef<HTMLDivElement>(null)
  const PersonnelModal = useRef<HTMLDivElement>(null)
  const open = useModalCtrl({
    toggle: [PersonnelToggle],
    modal: PersonnelModal,
    init: false,
  })
  const adult = useRecoilValue(personnelAudult)
  const child = useRecoilValue(personnelChild)
  const baby = useRecoilValue(personnelBaby)

  let guestMsg =
    adult + child + baby === 0 ? '게스트 추가' : `게스트 ${adult + child}명, 유아${baby}명`

  return (
    <>
      <BarBlock ref={PersonnelToggle}>
        <BarInnerWrapper>
          <div>
            <BarTitle>인원</BarTitle>
            <BarMessage>{guestMsg}</BarMessage>
          </div>
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
