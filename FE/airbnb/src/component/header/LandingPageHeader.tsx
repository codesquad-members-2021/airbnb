import styled from "styled-components";
import Logo from "component/header/Logo";
import Menus from "component/header/Menus";
import MyPage from "component/header/MyPage";

function LandingPageHeader() {
  return (
    <HeaderContainer>
      <Logo />
      <Menus />
      <MyPage />
    </HeaderContainer>
  );
}

export default LandingPageHeader;

const HeaderContainer = styled.div`
  ${({ theme }) => theme.header}
`;
