import { RefObject } from 'react';
import styled from 'styled-components';
import Calendar from '../../calendar/Calendar';

interface Props {
  toggleRef: RefObject<HTMLDivElement>;
}

const FormCalendar = ({ toggleRef }: Props) => {
  const year: number = new Date().getFullYear();
  const month: number = new Date().getMonth() + 1;
  console.log(year, month);
  return (
    <StyledFormCalendar ref={toggleRef}>
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
`;
