import styled from "styled-components";
import { ReactComponent as Logo } from "components/common/Logo.svg";
import Login from "components/Header/Login";
import Navigator from "./Navigator";
const Header = () => {
  //🌼🌼헤더 말고 다른 곳 누르면 다시 minibar보이게 하면 됨
  return (
    <>
      <HeaderLayout>
        <Logo width="100px" />
        <Navigator />
        <Login />
      </HeaderLayout>
    </>
  );
};

const HeaderLayout = styled.div`
  display: flex;
  justify-content: space-between;
  padding: 2rem 2.4rem; //0px 로 바꾸기
`;

const NavigatorLayout = styled.ul`
  display: flex;
`;
const NavigatorList = styled.li`
  width: 8rem;
  text-align: center;
  padding: 10px;
  font-size: 1.6rem;
  &:hover {
    font-weight: bold;
    text-decoration-line: underline;
  }
  cursor: pointer;

  @media (max-width: 1024px) {
    width: 8rem;
    font-size: 0.8rem;
    padding: 2%;
  }
`;

export default Header;
