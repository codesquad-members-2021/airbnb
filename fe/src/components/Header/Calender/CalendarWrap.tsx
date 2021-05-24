import styled from 'styled-components';

import { useRecoilState, useSetRecoilState } from 'recoil';
import { dateSearchClick } from '@recoil/atoms/calendarState';
import { calendarDateState } from '@recoil/atoms/date';
import Calendar from './Calendar';

const CalendarWrap = () => {
  const [calendarDate, setCalendarDate] = useRecoilState(calendarDateState);
  const setIsOpenCalendar = useSetRecoilState(dateSearchClick);

  const handleClickOpenCalendar = (e: React.MouseEvent): void => {
    e.stopPropagation();
    setIsOpenCalendar(true);
  };

  const options = {
    carouselWidth: 916,
    itemsToShow: 6,
    duration: 0.5,
    timing: 'ease-in-out',
    arrowSize: 40,
  };

  return (
    <CalendarContainer onClick={handleClickOpenCalendar}>
      <Slider {...options}>
        {new Array(6).fill(null).map((_, idx) => (
          <Calendar
            key={calendarDate.month + idx}
            calendarDate={calendarDate}
            idx={idx - 2}
          />
        ))}
      </Slider>
    </CalendarContainer>
  );
};

export default CalendarWrap;

const CalendarContainer = styled.div`
  display: flex;
  justify-content: space-evenly;
  margin-top: 2rem;
  width: 916px;
  height: 512px;
  background-color: ${({ theme }) => theme.color.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: ${({ theme }) => theme.borderRadius.calendar};
`;
