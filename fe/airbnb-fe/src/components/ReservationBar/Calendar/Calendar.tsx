import styled from 'styled-components';
import React, { ReactElement } from 'react';

type CalendarProps = {
  className?: string
}

function Calendar({ className }: CalendarProps): ReactElement {
  return (
    <StyledCalendar>
      
    </StyledCalendar>
  )
};

export default Calendar;

const StyledCalendar = styled.div`
  flex: 40%;
`;
