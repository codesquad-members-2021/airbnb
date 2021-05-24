import React from 'react';
import styled from 'styled-components';
import AccountMenu from './AccountMenu';
import NavRadio from './NavRadio';
import AirbnbIcon from './AirbnbIcon';
import AccountModal from './AccountMenu/AccountModal';

const Header = () => {
  return (
    <HeaderDiv>
      <AirbnbIcon />
      <NavRadio />
      <AccountMenu />
    </HeaderDiv>
  );
};

const HeaderDiv = styled.div`
  position: relative;
  height: 94px;
  display: flex;
  justify-content: space-between;
  width: 88.88%;
  margin: 0 auto;
  align-items: center;
  color: ${({ theme }) => theme.colors.gray1};
`;

export default Header;
