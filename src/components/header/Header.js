import Menu from "./menu/Menu";
import React from "react";
import styled from "styled-components";
import MyPage from "./MyPage";
import { ReactComponent as Logo } from "./svg/img_logo.svg";
const Header = () => {
  return (
    <HeaderWrapper>
      <HeaderContainer>
        <Logo fill="black" />
        <Menu />
        <MyPage />
      </HeaderContainer>
    </HeaderWrapper>
  );
};

const HeaderWrapper = styled.div`
  position: fixed;
  top: 0;
  width: 100%;
`;
const HeaderContainer = styled.div`
  width: 80%;
  height: 80px;
  margin: 0 auto;
  display: flex;
  align-items: center;
  justify-content: space-between;
`;

export default Header;
