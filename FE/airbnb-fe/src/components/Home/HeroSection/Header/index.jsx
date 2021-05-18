import React from 'react';
import styled from 'styled-components';
import AccountMenu from './AccountMenu';
import NavRadio from './NavRadio';
import AirbnbIcon from './AirbnbIcon';

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
  height: 94px;
  display: flex;
  justify-content: space-between;
  width: 88.88%;
  border: 1px solid red;
  margin: 0 auto;
  align-items: center;
  /* background-color: ${({ theme }) => theme.colors.gray3}; */
`;

const LogoIcon = styled.svg`
  fill: black;
`;

export default Header;
