import React from 'react';
import styled from 'styled-components';
import Price from './Price';
import Check from './Check';
import People from './People';

const Search = () => {
  return (
    <SearchDiv>
      <SearchWrap>
        <Check></Check>
        <Price></Price>
        <People></People>
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
  height: 76px;
  width: 63.6%;
  align-items: center;
  display: grid;
  grid-template-columns: 5fr 3fr 2fr;
  text-align: center;
  border-radius: 3rem;
  background-color: ${({ theme }) => theme.colors.white};
`;
export default Search;
