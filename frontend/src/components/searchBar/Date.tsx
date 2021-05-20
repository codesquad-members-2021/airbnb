import {useState, useRef, useEffect, } from 'react';
import styled from 'styled-components';
import { PlaceSection, ModalWrapper, BarBlock, BarInnerWrapper, BarTitle, BarMessage} from '../../style/BarStyle'
import { TiDelete } from "react-icons/ti";
import IconButton from '@material-ui/core/IconButton';
import useModalCtrl from '../../customHook/useModalCtrl'
import ModalCalendar from './ModalCalendar'
const Date = () =>{
  const [clicked, setClick] = useState(false)



  return (
    <PlaceSection>
      <DateFlexWrapper>
        <BarBlock clicked={clicked} type="date">
          <BarInnerWrapper>
            <BarTitle>체크인</BarTitle>
            <BarMessage>날짜입력</BarMessage>
          </BarInnerWrapper>
        </BarBlock>
        <BarBlock clicked={clicked} type='date'>
          <BarInnerWrapper>
            <BarTitle>체크아웃</BarTitle>
            <BarMessage>날짜입력</BarMessage>
          </BarInnerWrapper>
        </BarBlock>
      </DateFlexWrapper>

      <ModalWrapper>
        <ModalCalendar modalType='date'/>
      </ModalWrapper>
    </PlaceSection>
  )
}


const DateFlexWrapper = styled.div`
display: flex;`

export default Date;