import React from "react";
import styled from "styled-components";
import Logo from "component/header/Logo";
import Menus from "component/header/Menus";
import MyPage from "component/header/MyPage";

function Header() {
  return (
    <HeaderContainer>
      <Logo />
      <Menus />
      <MyPage />
    </HeaderContainer>
  );
}

export default Header;

const HeaderContainer = styled.div`
  box-sizing: border-box;
  width: 1440px;
  height: 80px;
  padding: 0 80px;

  display: flex;
  justify-content: space-between;
  align-items: center;
  position: relative;
`;
