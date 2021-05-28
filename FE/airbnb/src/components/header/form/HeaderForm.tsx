import { useRef } from 'react';
import styled from 'styled-components';
import FormLocation from './FormLocation';
import FormGuest from './FormGuest';
import FormCheckIn from './FormCheckIn';
import FormCheckOut from './FormCheckOut';
import FormPrice from './FormPrice';

const HeaderForm = () => {
  const checkOutRef = useRef<HTMLDivElement>(null);

  return (
    <StyledHeaderForm>
      <FormLocation />
      <FormCheckIn checkOutRef={checkOutRef} />
      <FormCheckOut checkOutRef={checkOutRef} />
      <FormPrice />
      <FormGuest />
    </StyledHeaderForm>
  );
};

interface StyleProps {}

const StyledHeaderForm = styled.div<StyleProps>`
  display: grid;
  grid-template-columns: 0.7fr 0.5fr 0.5fr 0.6fr 0.6fr;
  margin: 0 auto;
  max-width: 1100px;
  border: ${({ theme }) => `1px solid ${theme.colors.gray4}`};
  border-radius: 60px;
  background-color: ${({ theme }) => theme.colors.white};
  & > div {
    position: relative;
  }
  & > div:not(:first-child)::before {
    position: absolute;
    height: 3rem;
    left: 0;
    top: 1rem;
    content: '';
    border-right: ${({ theme }) => `1px solid ${theme.colors.gray5}`};
  }
  & > div:hover {
    &::before,
    & + div::before {
      border-right: none;
    }
  }
`;

export default HeaderForm;
