import React from 'react';
import styled from 'styled-components';
import { CenterContainer } from '../util/utilStyles';

const Header = () => {
  return (
    <StyledHeder>
      <div className='logo'>LOGO</div>
      <div className='tab'>
        <div>숙소</div>
        <div>체험</div>
        <div>온라인 체험</div>
      </div>
      <div className='nav'>
        <div>호스트 되기</div>
        <div></div>
        <div></div>
      </div>
    </StyledHeder>
  );
};

const StyledHeder = styled(CenterContainer)`
  justify-content: space-between;
  height: 6rem;
  padding: 0 5rem;
  background-color: ${({ theme }) => theme.colors.red};
  .logo {
    font-size: ${({ theme }) => theme.fontSize.largest};
    font-weight: 700;
  }
`;

export default Header;
