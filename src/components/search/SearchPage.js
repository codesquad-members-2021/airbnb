import React from "react";
import styled from "styled-components";
import SearchResult from "./SearchResult";

const SearchPage = () => {
  return (
    <SearchPageWrapper>
      <SearchResult />
      <Map />
    </SearchPageWrapper>
  );
};

const SearchPageWrapper = styled.div`
  padding-top: 80px;
  display: flex;
  height: calc(100vh - 80px);

  & > *:first-child {
    width: 40%;
  }
  & > *:last-child {
    width: 60%;
  }
`;

const Map = styled.div`
  background: tan;
`;
export default SearchPage;
