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
  useEffect(() => {
    open? setClick(true) : setClick(false)
  },[open])

  return(
    <>
    <BarBlock clicked={clicked} ref={PlaceToggle}>
      <BarInnerWrapper>
        <BarTitle>위치</BarTitle>
        <BarMessage>어디로 여행가세요?</BarMessage>
      </BarInnerWrapper>
    </BarBlock>
    {open && 
      (
      <Modal ref={PlaceModal}>
        <ModalPlace modalType="place"/>
      </Modal>
      )
    }
    </>
  )
}
const Modal = styled.div`
width: 100px;
height: 100px;
`

export default Place;