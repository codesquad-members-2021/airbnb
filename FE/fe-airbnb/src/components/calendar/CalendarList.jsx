import { useContext } from 'react';
import styled from 'styled-components';
import Calendar from './Calendar';
import { CalendarContext } from './CalendarModal';

const CalendarList = ({ x, onTransitionEnd, leftSlide, rightSlide }) => {
  const { calendars } = useContext(CalendarContext);

  return (
    <CalendarListContainer
      x={x}
      onTransitionEnd={onTransitionEnd}
      className={rightSlide || leftSlide ? 'on-slide' : ''}
    >
      <FlexBox>
        {calendars.map((calendar) => (
          <Calendar calendar={calendar} />
        ))}
      </FlexBox>
    </CalendarListContainer>
  );
};

const CalendarListContainer = styled.div`
  width: 200%;
  transform: ${({ x }) => `translateX(${x}px)`};

  &.on-slide {
    transition: all 0.5s;
  }
`;

const FlexBox = styled.div`
  display: flex;
  gap: 68px;
`;

export default CalendarList;
