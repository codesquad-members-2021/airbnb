import React from 'react';
import styled from 'styled-components';
import Price from './Price';
import Check from './Check';
import People from './People';
import SearchBtn from './SearchBtn';

const Search = () => {
  return (
    <SearchDiv>
      <SearchWrap>
        <Check></Check>
        <Price></Price>
        <People></People>
        <SearchBtnWrap>
          <SearchBtn />
        </SearchBtnWrap>
      </SearchWrap>
    </SearchDiv>
  );
};

const SearchDiv = styled.div`
  display: flex;
  justify-content: center;
  width: 100%;
`;
const SearchWrap = styled.div`
  position: relative;
  height: 76px;
  width: 63.6%;
  align-items: center;
  display: grid;
  grid-template-columns: 5fr 3fr 3fr;
  text-align: center;
  /* padding: 0 0 0 2.3rem; */
  border-radius: 3rem;
  background-color: ${({ theme }) => theme.colors.white};
  /* border: 1px solid yellow; */
`;

const SearchBtnWrap = styled.div`
  position: absolute;
  right: 1rem;
`;

export default Search;
