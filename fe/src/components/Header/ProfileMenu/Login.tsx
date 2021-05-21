import styled from 'styled-components';
import { useSetRecoilState } from 'recoil';

import { isOpenProfileModal } from '@recoil/atoms/profileModal';

type MouseClick = React.MouseEvent<HTMLElement>;

const Login = () => {
  const setOpenModal = useSetRecoilState(isOpenProfileModal);

  const handleModalClick = (e: MouseClick): void => {
    e.stopPropagation();
    setOpenModal(true);
  };

  return (
    <LoginWrap onClick={handleModalClick}>
      <li>
        <span>로그인</span>
      </li>
    </LoginWrap>
  );
};

export default Login;

const LoginWrap = styled.ul`
  top: 80%;
  right: 25%;
  width: 200px;
  height: 87px;
  background-color: ${({ theme }) => theme.color.white};
  position: absolute;
  border-radius: 10px;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
  z-index: 2;

  li {
    margin: 1rem 0;
    padding: 1rem 2rem;

    &:hover {
      background-color: rgba(51, 51, 51, 0.1);
    }
  }
`;
