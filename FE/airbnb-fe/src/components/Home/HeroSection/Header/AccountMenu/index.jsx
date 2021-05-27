import React, { useState, useEffect, useRef } from 'react';
import styled from 'styled-components';
import AccountIcon from './AccountIcon.jsx';
import AccountModal from './AccountModal.jsx';

import MenuIcon from './MenuIcon.jsx';

const AccountMenu = () => {
  const AccountModalElement = useRef();

  const [isAccountClicked, setIsAccountClicked] = useState(false);
  const handleAccountMenuClick = () => {
    setIsAccountClicked(!isAccountClicked);
  };

  useEffect(() => {
    const modalOff = (e) => {
      if (isAccountClicked && !AccountModalElement.current.contains(e.target)) {
        setIsAccountClicked(false);
      }
    };
    document.addEventListener('mousedown', modalOff);
    return () => {
      document.removeEventListener('mousedown', modalOff);
    };
  }, [isAccountClicked]);

  return (
    <AccountMenuDiv ref={AccountModalElement}>
      <IconContainer onClick={() => handleAccountMenuClick()}>
        <MenuIcon />
        <AccountIcon />
      </IconContainer>
      <ModalDiv>{isAccountClicked && <AccountModal />}</ModalDiv>
    </AccountMenuDiv>
  );
};

const AccountMenuDiv = styled.div``;

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
const ModalDiv = styled.div`
  position: absolute;
  top: 0;
  right: 0;
`;

export default AccountMenu;
