import styled from 'styled-components';
import React, { ReactElement } from 'react';

type ReservationBarDropPopupProps = {
  popupContent: ReactElement
};

function ReservationBarDropPopup({ popupContent }: ReservationBarDropPopupProps): ReactElement {
  return (
    <StyledReservationBarDropPopup>
      
    </StyledReservationBarDropPopup>
  )
};

export default ReservationBarDropPopup;

const StyledReservationBarDropPopup = styled.div`
`;
