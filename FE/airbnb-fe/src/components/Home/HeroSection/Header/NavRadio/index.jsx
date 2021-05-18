import React from 'react';
import styled from 'styled-components';

const NavRadio = () => {
  return (
    <NavDiv>
      <div>숙소</div>
      <div>체험</div>
      <div>온라인체험</div>
    </NavDiv>
  );
};

const NavDiv = styled.div`
  display: flex;
  gap: 1.3rem;
`;

export default NavRadio;
