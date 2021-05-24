import React from "react";
import styled from "styled-components";
import LogoImg from "assets/logo.png";

function Logo() {
  return (
    <LogoContainer>
      <img src={LogoImg} alt="airbnb" />
    </LogoContainer>
  );
}

export default Logo;

const LogoContainer = styled.div`
  display: flex;
  align-items: center;
  img {
    width: 100px;
  }
`;
