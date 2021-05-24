import React from 'react';
import styled from 'styled-components';
import CalendarCarousel from '../CalendarCarousel';

const CheckModal = () => {
  return (
    <CheckModalDiv>
      <CalendarCarousel />
    </CheckModalDiv>
  );
};

const CheckModalDiv = styled.div`
  position: absolute;
  top: 6rem;
  width: 58rem;
  height: 32rem;
  border-radius: 40px;
  background-color: ${({ theme }) => theme.colors.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
`;

export default CheckModal;
