import { useState, useRef, useEffect } from 'react'
import { useRecoilState } from 'recoil'
import { clickedPlace, defaultValue } from '../../../customHook/atoms'
import {
  PlaceSection,
  ModalWrapper,
  BarBlock,
  BarInnerWrapper,
  BarTitle,
  BarMessage,
} from '../../../style/BarStyle'
import useModalCtrl from '../../../customHook/useModalCtrlArray'
import ModalPlace from './ModalPlace'
import { clickPlace } from '../../../customHook/atoms'
import useXclick from '../../../customHook/useXclick'

const Place = () => {
  const PlaceToggle = useRef<HTMLDivElement>(null)
  const PlaceModal = useRef<HTMLDivElement>(null)
  const open = useModalCtrl({
    toggle: [PlaceToggle],
    modal: PlaceModal,
    init: false,
  })

  const [placeClicked, setPlaceClicked] = useRecoilState(clickPlace)
  const [placeToSearch, setPlaceToSearch] = useRecoilState(clickedPlace)
  const defaultMsg = defaultValue.placeToSearch

  const handleClick = () => {
    setPlaceClicked((clicked) => {
      if (!open) return true
      return !clicked
    })
  }

  const RenderXbtn = useXclick(placeToSearch, [setPlaceToSearch], defaultMsg)

  return (
    <PlaceSection>
      <BarBlock clicked={placeClicked && open} onClick={handleClick} ref={PlaceToggle}>
        <BarInnerWrapper>
          <div>
            <BarTitle>위치</BarTitle>
            <BarMessage>{placeToSearch}</BarMessage>
          </div>
          <RenderXbtn />
        </BarInnerWrapper>
      </BarBlock>
      {open && (
        <ModalWrapper ref={PlaceModal} modalType='place'>
          <ModalPlace modalType='place' />
        </ModalWrapper>
      )}
    </PlaceSection>
  )
}

export default Place
