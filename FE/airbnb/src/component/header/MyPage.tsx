import React from "react";
import styled from "styled-components";
import { ReactComponent as MenuIcon } from "assets/menu.svg";
import { ReactComponent as UserIcon } from "assets/user.svg";

function MyPage() {
  return (
    <MyPageContainer>
      <Button>
        <MenuIcon />
        <UserIcon />
      </Button>
    </MyPageContainer>
  );
}

export default MyPage;

const MyPageContainer = styled.div`
  box-sizing: border-box;
  width: 75px;
  height: 40px;
  padding: 4px 4px 4px 13px;
  border: 1px solid #bdbdbd;
  background-color: #fff;
  border-radius: ${({ theme }) => theme.borderRadius.s};

  display: flex;
  align-items: center;
`;

const Button = styled.button`
  width: 100%;
  padding: 0;
  margin: 0;
  outline: none;
  border: none;
  background-color: transparent;

  display: flex;
  justify-content: space-between;
  align-items: center;

  svg:first-child {
    width: 16px;
  }
`;
