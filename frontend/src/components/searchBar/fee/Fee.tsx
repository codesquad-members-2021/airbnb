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
import { FeeMin, FeeMax, defaultValue, FeeMinChange, FeeMaxChange } from '../../../customHook/atoms'
import useXclick from '../../../customHook/useXclick'

export const getFeeMsg = (
  priceMin: string | number,
  priceMax: number,
  minFeePercent: number,
  maxFeePercent: number
) => {
  let feeMsg =
    priceMin === defaultValue.fee
      ? priceMin
      : `${Number(priceMin) + Number(minFeePercent)} ~ ${Number(priceMax) - Number(maxFeePercent)}원`
  return feeMsg
}

const Fee = () => {
  const FeeToggle = useRef<HTMLDivElement>(null)
  const FeeModal = useRef<HTMLDivElement>(null)
  const open = useModalCtrl({
    toggle: [FeeToggle],
    modal: FeeModal,
    init: false,
  })

  const [minFeePercent, setMinFeePercent] = useRecoilState(FeeMinChange)
  const [maxFeePercent, setMaxFeePercent] = useRecoilState(FeeMaxChange)
  const [priceMin, setPriceMin] = useRecoilState(FeeMin)
  const priceMax = useRecoilValue(FeeMax)

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
            <BarMessage>{getFeeMsg(priceMin, priceMax, minFeePercent, maxFeePercent)}</BarMessage>
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
