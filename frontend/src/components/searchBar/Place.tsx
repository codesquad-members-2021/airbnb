import {useState, useRef, useEffect, } from 'react'
import styled from 'styled-components'
import {BarBlock, BarInnerWrapper, BarTitle, BarMessage} from '../../style/BarStyle'
import useModalCtrl from '../../customHook/useModalCtrl'
import ModalPlace from './ModalPlace'
const Place = () => {
  const PlaceToggle = useRef<HTMLDivElement>(null)
  const PlaceModal = useRef<HTMLDivElement>(null)
  const open = useModalCtrl({toggle:PlaceToggle, modal:PlaceModal, init:false})

  const [clicked, setClick] = useState(false)
  const [targetPlace, setTargetPlace] = useState<string|HTMLButtonElement>('어디로 여행가세요?')
  useEffect(() => {
    open? setClick(true) : setClick(false)
  },[open])

  return(
    <PlaceSection>
    <BarBlock clicked={clicked} ref={PlaceToggle}>
      <BarInnerWrapper>
        <BarTitle>위치</BarTitle>
        <BarMessage>{targetPlace}</BarMessage>
      </BarInnerWrapper>
    </BarBlock>
    {open && 
      (
      <Modal ref={PlaceModal}>
        <ModalPlace modalType="place" {...{targetPlace, setTargetPlace}}/>
      </Modal>
      )
    }
    </PlaceSection>
  )
}

const PlaceSection = styled.div`
display:flex;
flex-direction: column;
`
const Modal = styled.div`
margin-top: 16px;
`

export default Place;