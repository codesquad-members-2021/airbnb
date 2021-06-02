import React from 'react';
import styled from 'styled-components';

const AccountModal = () => {
  return (
    <AccountModalDiv>
      <AccountModalItem>
        <a href="https://github.com/login/oauth/authorize?client_id=c7adc71d1700acad7b68&scope=repo:status read:repo_hook user:email&redirect_uri=http://localhost:3000/callback">
          로그인
        </a>
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
  height: 2.3rem;
  padding: 0 1rem;
  display: flex;
  align-items: center;
  &:hover {
    background-color: ${({ theme }) => theme.colors.gray6};
  }
`;

export default AccountModal;
