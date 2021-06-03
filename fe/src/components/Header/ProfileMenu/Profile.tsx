import React, { useEffect, useState } from 'react';
import styled from 'styled-components';
import { useRecoilState } from 'recoil';
import queryString from 'query-string';

import { isOpenProfileModal } from '@recoil/atoms/profileModal';

import { ReactComponent as MenuIcon } from '@assets/menu.svg';
import { ReactComponent as User } from '@assets/user.svg';
import Login from './Login';

type MouseClick = React.MouseEvent<HTMLElement>;

const Profile = () => {
  const [isOpenModal, setOpenModal] = useRecoilState(isOpenProfileModal);
  const [isLogin, setIsLogin] = useState<boolean>(false);

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

  useEffect(() => {
    const { code } = queryString.parse(window.location.search);
    if (!code) return;

    const getAccessToken = async () => {
      if (isLogin) return;
      try {
        const response = await fetch(
          `http://3.35.178.32:8080/auth?code=${code}`
        );
        const jwt = await response.text();
        localStorage.setItem('jwt', jwt);
        setIsLogin(true);

        const homePage = '/';
        window.history.pushState(null, '', homePage);
      } catch (error) {
        console.log(error);
      }
    };
    getAccessToken();
  }, []);

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
