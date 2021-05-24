import React, { useState } from 'react';
import styled from 'styled-components';
import AccountIcon from './AccountIcon.jsx';
import AccountModal from './AccountModal.jsx';

import MenuIcon from './MenuIcon.jsx';

const AccountMenu = () => {
  const [isAccountClicked, setIsAccountClicked] = useState(false);
  const handleAccountMenuClick = () => {
    setIsAccountClicked((isAccountClicked) => !isAccountClicked);
  };

  return (
    <>
      <IconContainer onClick={() => handleAccountMenuClick()}>
        <MenuIcon />
        <AccountIcon />
      </IconContainer>
      {isAccountClicked && <AccountModal />}
    </>
  );
};

const IconContainer = styled.div`
  display: flex;
  align-items: center;
  background: white;
  justify-content: space-around;
  padding-left: 0.3rem;
  width: 4.8rem;
  height: 2.5rem;
  border-radius: 30px;
  &:hover {
    cursor: pointer;
  }
`;

export default AccountMenu;
