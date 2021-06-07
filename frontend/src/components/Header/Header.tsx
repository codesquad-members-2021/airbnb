import styled from "styled-components";
import { ReactComponent as Logo } from "components/common/Logo.svg";
import Login from "components/Header/Login";
import Navigator from "./Navigator";
const Header = () => {
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
  padding: 2rem 2.4rem;
`;

export default Header;
