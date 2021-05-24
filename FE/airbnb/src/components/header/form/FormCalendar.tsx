import { RefObject } from 'react';
import { useRecoilState } from 'recoil';
import styled from 'styled-components';
import { calendarState } from '../../../recoil/headerAtom';
import Calendar from '../../calendar/Calendar';
import { ReactComponent as CalendarPrevBtn } from '../../../assets/svg/Property 1=chevron-left.svg';
import { ReactComponent as CalendarNextBtn } from '../../../assets/svg/Property 1=chevron-right.svg';

interface Props {
  toggleRef: RefObject<HTMLDivElement>;
}

const FormCalendar = ({ toggleRef }: Props) => {
  const [calendarDate, setCalendarDate] = useRecoilState(calendarState);
  const handlePrevBtnClick = (): void => {
    const { year, month } = calendarDate;
    let isPrevYear = false;
    let newMonth = month - 2;
    if (month - 2 < 1) {
      isPrevYear = true;
      newMonth = month - 2 + 12;
    }
    const newYear = isPrevYear ? year - 1 : year;
    setCalendarDate({ year: newYear, month: newMonth });
  };
  const handleNextBtnClick = (): void => {
    const { year, month } = calendarDate;
    let isNextYear = false;
    let newMonth = month + 2;
    if (month + 2 > 12) {
      isNextYear = true;
      newMonth = month + 2 - 12;
    }
    const newYear = isNextYear ? year + 1 : year;
    setCalendarDate({ year: newYear, month: newMonth });
  };

  const nextMonth = calendarDate.month + 1 > 12 ? 1 : calendarDate.month + 1;
  const nextYear = nextMonth === 1 ? calendarDate.year + 1 : calendarDate.year;
  return (
    <StyledFormCalendar ref={toggleRef}>
      <div className='calendarButton'>
        <CalendarPrevBtn onClick={handlePrevBtnClick} />
        <CalendarNextBtn onClick={handleNextBtnClick} />
      </div>
      <Calendar {...{ year: calendarDate.year, month: calendarDate.month }} />
      <Calendar {...{ year: nextYear, month: nextMonth }} />
    </StyledFormCalendar>
  );
};

export default FormCalendar;

const StyledFormCalendar = styled.div`
  position: absolute;
  top: 100px;
  left: -6rem;
  display: flex;
  justify-content: space-between;
  padding: 3rem 5rem;
  width: 916px;
  background-color: ${({ theme }) => theme.colors.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
  .calendarButton {
    position: absolute;
    display: flex;
    justify-content: space-between;
    width: 916px;
    left: 0;
    top: 3.2rem;
    padding: 0 6rem;
  }
`;
