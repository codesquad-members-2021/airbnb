import styled from "styled-components";
import { stopPropagation } from "component/searchBar/modalFunctions";

function MyPageModal() {
  const clientID = process.env.REACT_APP_CLIENT_ID;
  const LOGIN_URL = `https://github.com/login/oauth/authorize?client_id=${clientID}&redirect_uri=http://localhost:3000/api/login/callback&scope=user`;

  return (
    <ModalContainer onClick={stopPropagation}>
      <a href={LOGIN_URL}>로그인</a>
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
