import React from "react";
import styled from "styled-components";
import Logo from "component/header/Logo";
import SearchBar from "component/searchBar/SearchBar";
import MyPage from "component/header/MyPage";

const SearchResultPage = () => {
  return (
    <PageContainer>
      <HeaderContainer>
        <Logo />
        <SearchBar size="mini" />
        <MyPage />
      </HeaderContainer>
    </PageContainer>
  );
};

export default SearchResultPage;

const PageContainer = styled.div`
  display: flex;
  justify-content: center;
`;

const HeaderContainer = styled.div`
  ${({ theme }) => theme.header}
  border-bottom: 1px solid #eee;
`;
