import { RefObject } from 'react';
import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { calendarState } from '../../../recoil/headerAtom';
import Calendar from '../../calendar/Calendar';
import { SvgCalendarLeftBtn, SvgCalendarRightBtn } from '../../svg/svg';

interface Props {
  toggleRef: RefObject<HTMLDivElement>;
}

const FormCalendar = ({ toggleRef }: Props) => {
  // const year: number = new Date().getFullYear();
  // const month: number = new Date().getMonth() + 1;

  const { year, month } = useRecoilValue(calendarState);
  console.log(year, month);
  return (
    <StyledFormCalendar ref={toggleRef}>
      <div className='calendarButton'>
        <SvgCalendarLeftBtn />
        <SvgCalendarRightBtn />
      </div>
      <Calendar {...{ year, month }} />
      <Calendar {...{ year, month: month + 1 }} />
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
