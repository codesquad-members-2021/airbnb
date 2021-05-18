import React from 'react';
import styled from 'styled-components';

const Search = () => {
  return <SearchDiv></SearchDiv>;
};

const SearchDiv = styled.div`
  background-color: ${({ theme }) => theme.colors.magenta};
`;
export default Search;
