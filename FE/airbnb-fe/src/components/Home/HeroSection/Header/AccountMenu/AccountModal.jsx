import React, { useState, useEffect } from 'react';
import styled from 'styled-components';
import LoginBtn from './LoginPage';

const AccountModal = ({ setProfileURL }) => {
  const [isMouseOver, setIsMouseOver] = useState(false);
  const [isLogin, setIsLogin] = useState(false);

  const handleLoginMouseOver = () => {
    setIsMouseOver(true);
  };
  const token = localStorage.getItem('token');
  console.log(localStorage.getItem('token'));
  useEffect(() => {
    if (token) {
      setIsLogin(true);
    }
  }, [token]);

  const handleLoginMouseLeave = () => {
    setIsMouseOver(false);
  };

  const handleLogOut = () => {
    setIsLogin(false);
    setProfileURL(null);
    localStorage.removeItem('token');
    localStorage.removeItem('ProfileURL');
  };

  return (
    <AccountModalDiv>
      {/* <AccountModalItem
        isMouseOver={isMouseOver}
        onMouseOver={() => handleLoginMouseOver()}
        onMouseLeave={() => handleLoginMouseLeave()}
      >
        {isLogin ? '로그아웃' : `${isMouseOver ? <LoginBtn /> : '로그인'}`}
      </AccountModalItem> */}
      {isLogin ? (
        <AccountLogout onClick={() => handleLogOut()}>로그아웃</AccountLogout>
      ) : (
        <AccountModalItem
          isMouseOver={isMouseOver}
          onMouseOver={() => handleLoginMouseOver()}
          onMouseLeave={() => handleLoginMouseLeave()}
        >
          {isMouseOver ? <LoginBtn /> : '로그인'}
        </AccountModalItem>
      )}
    </AccountModalDiv>
  );
};

const AccountModalDiv = styled.div`
  z-index: 100;
  display: flex;
  position: absolute;
  padding: 1rem 0;
  top: 5rem;
  right: 0;
  width: 12.5rem;
  height: 5rem;
  border-radius: 10px;
  background-color: ${({ theme }) => theme.colors.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
`;

const AccountLogout = styled.div`
  width: 100%;
  padding: 0 1rem;
  display: flex;
  align-items: center;
  cursor: pointer;
  &:hover {
    background: ${({ theme }) => theme.colors.gray5};
  }
`;

const AccountModalItem = styled.div`
  width: 100%;
  cursor: pointer;
  padding: ${({ isMouseOver, isLogin }) =>
    isLogin ? '0 1rem' : isMouseOver ? '0rem' : '0 1rem'};
  display: flex;
  align-items: center;
`;

export default AccountModal;
