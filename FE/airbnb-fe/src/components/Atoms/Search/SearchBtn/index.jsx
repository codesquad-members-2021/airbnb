import React from 'react';
import styled from 'styled-components';

const SearchBtn = () => {
  return <SearchBtnDiv></SearchBtnDiv>;
};

const SearchBtnDiv = styled.div`
  background-color: ${({ theme }) => theme.colors.magenta};
`;

export default SearchBtn;
