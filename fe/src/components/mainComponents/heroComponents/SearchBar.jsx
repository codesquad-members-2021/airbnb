import React from "react";
import styled from "styled-components";
import SearchIcon from "@material-ui/icons/Search";

const SearchBar = (props) => {
  return (
    <Bar>
      <Location>위치</Location>
      <CheckIn>체크인</CheckIn>
      <CheckOut>체크아웃</CheckOut>
      <Price>금액</Price>
      <People>
        <span>인원</span>
        <SearchButton>
          <SearchIcon />
        </SearchButton>
      </People>
    </Bar>
  );
};

export default SearchBar;

const Bar = styled.div`
  display: flex;
  width: 700px;
`;

const Location = styled.div`
  width: 100%;
`;
const CheckIn = styled.div`
  width: 100%;
`;
const CheckOut = styled.div`
  width: 100%;
`;
const Price = styled.div`
  width: 100%;
`;
const People = styled.div`
  width: 100%;
  display: flex;
  justify-content: space-between;
`;

const SearchButton = styled.button``;
