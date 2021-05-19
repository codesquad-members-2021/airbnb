import styled from 'styled-components';
import { ReactElement } from 'react';

import ReservationBar from 'components/ReservationBar/ReservationBar';

export default function Header(): ReactElement {
  return (
    <StyledHeader>
      <ReservationBar/>
    </StyledHeader>
  );
}

const StyledHeader = styled.div`
  width: 100%;
  height: 4rem;
  display: flex;

  background-color: lightgray;
`;