import { useRef, useEffect } from 'react'
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
import { FeeMin, FeeMax, defaultValue, FeeMinChange, FeeMaxChange } from '../../../customHook/atoms'
import useXclick from '../../../customHook/useXclick'

const Fee = () => {
  let feeMsg
  const FeeToggle = useRef<HTMLDivElement>(null)
  const FeeModal = useRef<HTMLDivElement>(null)
  const open = useModalCtrl({
    toggle: [FeeToggle],
    modal: FeeModal,
    init: false,
  })

  const [minFeePercecnt, setMinFeePercent] = useRecoilState(FeeMinChange)
  const [maxFeePercecnt, setMaxFeePercent] = useRecoilState(FeeMaxChange)
  const [priceMin, setPriceMin] = useRecoilState(FeeMin)
  const priceMax = useRecoilValue(FeeMax)

  const feeMax = useRecoilValue(FeeMax)

  feeMsg =
    typeof priceMin === 'string'
      ? priceMin
      : `${priceMin + minFeePercecnt} ~ ${priceMax - maxFeePercecnt}원`

  const RenderXbtn = useXclick(
    priceMin,
    [setPriceMin, setMinFeePercent, setMaxFeePercent],
    defaultValue.fee
  )
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
