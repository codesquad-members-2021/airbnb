import React from 'react';
import styled from 'styled-components';
import Calendar from './Calendar';

const CalendarCarousel = () => {
  return (
    <CalendarContainer>
      <Calendar />
    </CalendarContainer>
  );
};

const CalendarContainer = styled.div`
  width: 100%;
  height: 100%;
  padding: 4.0625rem 5.5rem;
  /* border: 1px solid magenta; */
`;

export default CalendarCarousel;
