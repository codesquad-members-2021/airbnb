import React, { useState } from 'react';
import styled from 'styled-components';
import LoginBtn from './LoginPage';

const AccountModal = () => {
  const [isMouseOver, setIsMouseOver] = useState(false);

  const handleLoginMouseOver = () => {
    setIsMouseOver(true);
  };

  const handleLoginMouseLeave = () => {
    setIsMouseOver(false);
  };

  return (
    <AccountModalDiv>
      <AccountModalItem
        isMouseOver={isMouseOver}
        onMouseOver={() => handleLoginMouseOver()}
        onMouseLeave={() => handleLoginMouseLeave()}
      >
        {isMouseOver ? <LoginBtn /> : '로그인'}
      </AccountModalItem>
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

const AccountModalItem = styled.div`
  width: 100%;
  padding: ${({ isMouseOver }) => (isMouseOver ? '0rem' : '0 1rem')};
  display: flex;
  align-items: center;
`;

export default AccountModal;
