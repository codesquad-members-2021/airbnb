import styled from 'styled-components';
import { useState, useRef, useEffect } from 'react';

import { ReactComponent as MenuIcon } from '@assets/menu.svg';
import { ReactComponent as User } from '@assets/user.svg';

const Profile = () => {
  const [isClicked, setIsClicked] = useState<boolean>(false);
  const profileRef = useRef<HTMLDivElement>(null);
  const modalRef = useRef<HTMLUListElement>(null);

  const handleModalClick = ({ target }: any): void => {
    const menu = profileRef.current;
    const login = modalRef.current;

    console.log(login);
    if (menu?.contains(target)) setIsClicked((status) => !status);
    else if (login?.contains(target)) setIsClicked(true);
    else setIsClicked(false);
  };

  useEffect(() => {
    document.addEventListener('click', handleModalClick);
    return () => {
      document.removeEventListener('click', handleModalClick);
    };
  }, []);

  return (
    <ProfileContainer>
      <ProfileMenu ref={profileRef}>
        <MenuIcon />
        <User />
      </ProfileMenu>
      {isClicked && (
        <Login ref={modalRef}>
          <li>로그인</li>
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
    padding: 2rem;
  }
`;
