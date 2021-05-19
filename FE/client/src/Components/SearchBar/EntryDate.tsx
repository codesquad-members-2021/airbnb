import React from 'react'
import styled from 'styled-components';
import HighlightOffIcon from '@material-ui/icons/HighlightOff';
import { IconButton } from "@material-ui/core";
import { DivisionContent, DivisionTitle } from './../commons/base';
import { useRecoilState } from 'recoil';
import { calendarClickAtom } from './../../recoil/atoms';
import { getMonthAndDay } from '../../utils/calendarUtil';

const EntryDate = () => {
  const [calendarClickState] = useRecoilState(calendarClickAtom);
  const [checkInTime, checkOutTime] = calendarClickState;
  
  
  return (
    <EntryDateWrapper>
        <CheckIn>
          <DivisionTitle>체크인</DivisionTitle>
          <DivisionContent>
            {checkInTime ? getMonthAndDay(checkInTime) : '날짜 입력'}
          </DivisionContent>
        </CheckIn>
        <Checkout>
          <DivisionTitle>체크아웃</DivisionTitle>
          <DivisionContent>
            {checkOutTime ? getMonthAndDay(checkOutTime) : '날짜 입력'}
          </DivisionContent>
        </Checkout>
      {/* <IconButton style={{display:'none'}}> */}
      <IconButton>
        <HighlightOffIcon />
      </IconButton>
    </EntryDateWrapper>
  )
}

const EntryDateWrapper = styled.div`
  display: flex;
  width: 40%;
  margin-left: 2.5rem;
  border-right:1px solid #E0E0E0;
`;

const CheckIn = styled.span`
  width: 43%;
  place-self: center;
  &:hover{
    cursor: pointer;
  }
`;

const Checkout = styled.span`
  width: 43%;
  place-self: center;
  &:hover{
    cursor: pointer;
  }
`;

export default EntryDate;
