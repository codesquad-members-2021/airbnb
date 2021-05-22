import { RefObject } from 'react';
import styled from 'styled-components';

interface Props {
  toggleRef: RefObject<HTMLDivElement>;
}

const FormCalendar = ({ toggleRef }: Props) => {
  return <StyledFormCalendar ref={toggleRef}></StyledFormCalendar>;
};

export default FormCalendar;

const StyledFormCalendar = styled.div`
  position: absolute;
  bottom: -522px;
  left: -6rem;
  width: 916px;
  height: 512px;
  background-color: ${({ theme }) => theme.colors.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 40px;
`;
