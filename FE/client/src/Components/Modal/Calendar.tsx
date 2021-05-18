import React, { useEffect } from 'react'
import styled from 'styled-components';
import { useRecoilValue } from 'recoil';
import { calendarStateSelector } from './../../recoil/atoms';
import Month from './Month';

const Calendar = () => {
  const calendarState = useRecoilValue(calendarStateSelector);

  useEffect(()=>{
    console.log(calendarState)
  },[calendarState])

  return (
    <CalendarWrapper>
      <Month left='0%' date={calendarState.leftMonthDate}/>
      <Month right='0%' date={calendarState.rightMonthDate}/>
    </CalendarWrapper>
  )
}

const CalendarWrapper = styled.div`
  position: relative;
  display:flex;
  background: #fff;
  padding: 5% 7%; 
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  gap: 3rem;
  border-radius: 40px;
`;


export default Calendar;
