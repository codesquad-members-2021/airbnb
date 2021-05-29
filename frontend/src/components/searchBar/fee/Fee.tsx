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
import { useRecoilValue, useRecoilState } from 'recoil'
import { FeeMin, FeeMax, defaultValue } from '../../../customHook/atoms'
import useXclick from '../../../customHook/useXclick'

const Fee = () => {
  const FeeToggle = useRef<HTMLDivElement>(null)
  const FeeModal = useRef<HTMLDivElement>(null)
  const open = useModalCtrl({
    toggle: [FeeToggle],
    modal: FeeModal,
    init: false,
  })

  const [feeMin, setFeeMin] = useRecoilState(FeeMin)
  const feeMax = useRecoilValue(FeeMax)
  let feeMsg = typeof feeMin === 'string' ? feeMin : `${feeMin} ~ ${feeMax}원`

  const RenderXbtn = useXclick(feeMin, [setFeeMin], defaultValue.fee)
  return (
    <>
      <BarBlock ref={FeeToggle}>
        <BarInnerWrapper>
          <div>
            <BarTitle>요금</BarTitle>
            <BarMessage>{feeMsg}</BarMessage>
          </div>
          <RenderXbtn />
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
