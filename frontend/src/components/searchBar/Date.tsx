import {useState, useRef, useEffect, } from 'react';
import styled from 'styled-components';
import { PlaceSection, ModalWrapper, BarBlock, BarInnerWrapper, BarTitle, BarMessage} from '../../style/BarStyle'
import { TiDelete } from "react-icons/ti";
import IconButton from '@material-ui/core/IconButton';
import useModalCtrl from '../../customHook/useModalCtrlArray'
import ModalCalendar from './ModalCalendar'
const Date = () =>{
  const checkInToggle = useRef<HTMLDivElement>(null)
  const checkOutToggle = useRef<HTMLDivElement>(null)
  const CalendarModal = useRef<HTMLDivElement>(null)
  const open = useModalCtrl({toggle:[checkInToggle, checkOutToggle], modal:CalendarModal, init:false})


  return (
    <PlaceSection>
      <DateFlexWrapper>
        <BarBlock open={open} type="date" ref={checkInToggle}>
          <BarInnerWrapper>
            <div>
              <BarTitle>체크인</BarTitle>
              <BarMessage>날짜입력</BarMessage>
            </div>
          </BarInnerWrapper>
        </BarBlock>
        <BarBlock open={open} type='date' ref={checkOutToggle}>
          <BarInnerWrapper>
            <div>
              <BarTitle>체크아웃</BarTitle>
              <BarMessage>날짜입력</BarMessage>
            </div>
          </BarInnerWrapper>
        </BarBlock>
      </DateFlexWrapper>
      {open && 
        (
        <ModalWrapper ref={CalendarModal} modalType='date'>
          <ModalCalendar modalType='date'/>
        </ModalWrapper>
        )
      }
      
    </PlaceSection>
  )
}


const DateFlexWrapper = styled.div`
display: flex;`

export default Date;