import { useSetRecoilState } from 'recoil';
import styled from 'styled-components';

import { isOpenProfileModal } from '@recoil/atoms/profileModal';

type MouseClick = React.MouseEvent<HTMLElement>;

const Login = () => {
  const setOpenModal = useSetRecoilState(isOpenProfileModal);
  const clientID = process.env.REACT_APP_CLIENT_ID;
  const LOGINURL =
    'https://github.com/login/oauth/authorize?client_id=' + clientID;

  const handleModalClick = (e: MouseClick): void => {
    e.stopPropagation();
    setOpenModal(true);
  };

  return (
    <LoginWrap onClick={handleModalClick}>
      <li>
        <a href="">
          <span>회원가입</span>
        </a>
      </li>
      <li>
        <a href={LOGINURL}>
          <span>로그인</span>
        </a>
      </li>
    </LoginWrap>
  );
};

export default Login;

const LoginWrap = styled.ul`
  top: 80%;
  right: 25%;
  width: 200px;
  height: auto;
  background-color: ${({ theme }) => theme.color.white};
  position: absolute;
  border-radius: 10px;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
  z-index: 2;

  li {
    &:hover {
      background-color: rgba(51, 51, 51, 0.1);
    }

    a {
      display: block;
      padding: 1rem 1.6rem;
      text-decoration: none;
      color: ${({ theme }) => theme.color.black};
    }
  }
`;
