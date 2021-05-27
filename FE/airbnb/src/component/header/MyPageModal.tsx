import React from "react";
import styled from "styled-components";

interface Props {
  onClick: (e: React.MouseEvent) => void;
}

function MyPageModal({ onClick }: Props) {
  return (
    <ModalContainer onClick={onClick}>
      <a href="http://15.165.76.167:8080/api/login">로그인</a>
    </ModalContainer>
  );
}

export default MyPageModal;

const ModalContainer = styled.div`
  box-sizing: border-box;
  width: 200px;
  padding: 32px;
  background-color: #fff;
  border-radius: ${({ theme }) => theme.borderRadius.s};

  position: absolute;
  top: 50px;
  right: 0;
  z-index: 1;
  cursor: default;

  a {
    text-decoration: none;
    color: ${({ theme }) => theme.color.black};
  }
`;
