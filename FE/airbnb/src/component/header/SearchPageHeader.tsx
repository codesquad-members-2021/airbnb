import { Link } from "react-router-dom";
import styled from "styled-components";
import Logo from "component/header/Logo";
import SearchBar from "component/searchBar/SearchBar";
import MyPage from "component/header/MyPage";

function SearchPageHeader() {
  return (
    <HeaderContainer>
      <Link to="/">
        <Logo />
      </Link>
      <SearchBar size="mini" />
      <MyPage />
    </HeaderContainer>
  );
}

export default SearchPageHeader;

const HeaderContainer = styled.div`
  ${({ theme }) => theme.header}
  box-shadow: 0px 0px 10px rgba(204, 204, 204, 0.3), 0px 2px 10px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(4px);
  position: fixed;
  z-index: 10;
`;
