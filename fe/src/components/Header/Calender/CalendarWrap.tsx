import styled from 'styled-components';

import { useSetRecoilState } from 'recoil';
import { dateSearchClick } from '@recoil/atoms/calendarState';

import Calendar from './Calendar';

const CalendarWrap = () => {
  const setIsOpenCalendar = useSetRecoilState(dateSearchClick);

  const handleClickOpenCalendar = (e: React.MouseEvent): void => {
    e.stopPropagation();
    setIsOpenCalendar(true);
  };

  return (
    <CalendarContainer onClick={handleClickOpenCalendar}>
      <Calendar />
      <Calendar />
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
