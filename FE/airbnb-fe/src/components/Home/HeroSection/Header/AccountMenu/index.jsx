import React, { useState, useEffect, useRef } from 'react';
import styled from 'styled-components';
import AccountIcon from '../../../../Atoms/icons/AccountIcon.jsx';
import AccountModal from './AccountModal.jsx';

import MenuIcon from '../../../../Atoms/icons/MenuIcon.jsx';

const AccountMenu = () => {
  const AccountModalElement = useRef();
  const [profileURL, setProfileURL] = useState('');
  const [isAccountClicked, setIsAccountClicked] = useState(false);
  const handleAccountMenuClick = () => {
    setIsAccountClicked(!isAccountClicked);
  };

  useEffect(() => {
    const profileImg = localStorage.getItem('ProfileURL');
    setProfileURL(profileImg);

    const modalOff = (e) => {
      if (isAccountClicked && !AccountModalElement.current.contains(e.target)) {
        setIsAccountClicked(false);
      }
    };
    document.addEventListener('mousedown', modalOff);
    return () => {
      document.removeEventListener('mousedown', modalOff);
    };
  }, [isAccountClicked, profileURL]);

  return (
    <AccountMenuDiv ref={AccountModalElement}>
      <IconContainer onClick={() => handleAccountMenuClick()}>
        <MenuIcon />
        {profileURL ? (
          <ProfileImg src={profileURL}></ProfileImg>
        ) : (
          <AccountIcon />
        )}
      </IconContainer>
      <ModalDiv>
        {isAccountClicked && <AccountModal setProfileURL={setProfileURL} />}
      </ModalDiv>
    </AccountMenuDiv>
  );
};

const AccountMenuDiv = styled.div``;
const ProfileImg = styled.img`
  width: 30px;
  height: 30px;
  border-radius: 70%;
  /* object-fit: contain; */
`;
const IconContainer = styled.div`
  display: flex;
  align-items: center;
  background: white;
  justify-content: space-around;
  padding-left: 0.3rem;
  width: 4.8rem;
  height: 2.5rem;
  border: 1px solid ${({ theme }) => theme.colors.gray4};

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
