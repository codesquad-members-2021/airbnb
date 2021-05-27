import styled from 'styled-components';
import React, { useEffect } from 'react';
import { useRecoilState } from 'recoil';

import { isOpenProfileModal } from '@recoil/atoms/profileModal';

import Login from './Login';
import { ReactComponent as MenuIcon } from '@assets/menu.svg';
import { ReactComponent as User } from '@assets/user.svg';

type MouseClick = React.MouseEvent<HTMLElement>;

const Profile = () => {
  const [isOpenModal, setOpenModal] = useRecoilState(isOpenProfileModal);

  const handleMenuClick = (e: MouseClick): void => {
    e.stopPropagation();
    setOpenModal((status) => !status);
  };

  useEffect(() => {
    const handleBodyClick = (): void => {
      setOpenModal(false);
    };

    document.addEventListener('click', handleBodyClick);
    return () => {
      document.removeEventListener('click', handleBodyClick);
    };
  }, [setOpenModal]);

  return (
    <ProfileContainer>
      <ProfileMenu onClick={handleMenuClick}>
        <MenuIcon />
        <User />
      </ProfileMenu>
      {isOpenModal && <Login />}
    </ProfileContainer>
  );
};

export default Profile;

const ProfileContainer = styled.div`
  ${({ theme }) => theme.flexCenter};
  width: 150px;
  height: 100%;
  cursor: pointer;
  position: relative;
`;

const ProfileMenu = styled.div`
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  width: 76px;
  height: 40px;
  border: 1px solid ${({ theme }) => theme.color.gray4};
  border-radius: 30px;
  background: ${({ theme }) => theme.color.white};
`;
