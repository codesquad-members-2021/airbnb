import styled from 'styled-components';
import React, { ReactElement } from 'react';

type CalendarProps = {
  className?: string
}

function Calendar({ className }: CalendarProps): ReactElement {
  return (
    <StyledCalendar>
      Calendar
    </StyledCalendar>
  )
};

export default Calendar;

const StyledCalendar = styled.div`
  box-shadow: 0 0 0 1px blue inset;
  width: 100%;
  height: 30rem;
  flex: 40%;
`;
