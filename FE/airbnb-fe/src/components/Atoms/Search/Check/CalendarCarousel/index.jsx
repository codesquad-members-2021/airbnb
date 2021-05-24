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
  padding: 65px 88px;
  border: 1px solid magenta;
`;

export default CalendarCarousel;
