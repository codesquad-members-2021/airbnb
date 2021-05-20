import styled from 'styled-components';
import React, { useState, useEffect } from 'react';

import { ReactComponent as MenuIcon } from '@assets/menu.svg';
import { ReactComponent as User } from '@assets/user.svg';

type MouseClick = React.MouseEvent<HTMLElement>;

const Profile = () => {
  const [isClicked, setIsClicked] = useState<boolean>(false);

  const handleMenuClick = (e: MouseClick): void => {
    e.stopPropagation();
    setIsClicked((status) => !status);
  };

  const handleModalClick = (e: MouseClick): void => {
    e.stopPropagation();
    setIsClicked(true);
  };

  const handleBodyClick = (): void => {
    setIsClicked(false);
  };

  useEffect(() => {
    document.addEventListener('click', handleBodyClick);
    return () => {
      document.removeEventListener('click', handleBodyClick);
    };
  }, []);

  return (
    <ProfileContainer>
      <ProfileMenu onClick={handleMenuClick}>
        <MenuIcon />
        <User />
      </ProfileMenu>
      {isClicked && (
        <Login onClick={handleModalClick}>
          <li>
            <span>로그인</span>
          </li>
        </Login>
      )}
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

const Login = styled.ul`
  top: 80%;
  right: 25%;
  width: 200px;
  height: 87px;
  background-color: ${({ theme }) => theme.color.white};
  position: absolute;
  border-radius: 10px;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);

  li {
    margin: 1rem 0;
    padding: 1rem 2rem;

    &:hover {
      background-color: rgba(51, 51, 51, 0.1);
    }
  }
`;
