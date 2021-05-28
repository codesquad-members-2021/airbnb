import { useRef } from 'react'
import {
  ModalWrapper,
  BarBlock,
  BarInnerWrapper,
  BarTitle,
  BarMessage,
} from '../../../style/BarStyle'
import ModalFee from './ModalFee'
import useModalCtrl from '../../../customHook/useModalCtrlArray'
import { useRecoilState, useSetRecoilState } from 'recoil'
import { FeeMin, FeeMax } from '../../../customHook/atoms'

const Fee = () => {
  const FeeToggle = useRef<HTMLDivElement>(null)
  const FeeModal = useRef<HTMLDivElement>(null)
  const open = useModalCtrl({
    toggle: [FeeToggle],
    modal: FeeModal,
    init: false,
  })

  //!바에 표현할 부분: 금액대 설정
  const [feeMin, setFeeMin] = useRecoilState(FeeMin)
  const setFeeMax = useSetRecoilState(FeeMax)

  return (
    <>
      <BarBlock ref={FeeToggle}>
        <BarInnerWrapper>
          <div>
            <BarTitle>요금</BarTitle>
            <BarMessage>금액대 설정</BarMessage>
          </div>
        </BarInnerWrapper>
      </BarBlock>
      {open && (
        <ModalWrapper ref={FeeModal} modalType={'ModalFee'}>
          <ModalFee modalType={'ModalFee'} />
        </ModalWrapper>
      )}
    </>
  )
}
export default Fee
