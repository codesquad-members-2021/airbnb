import React from 'react';
import styled from 'styled-components';
import SearchButtonSvg from './SearchButtonSvg';

const SearchBtn = () => {
  return (
    <SearchBtnDiv>
      {/* <SearchIconDiv> */}
      {/* <SearchIcon /> */}
      <SearchSvg>
        <SearchButtonSvg />
      </SearchSvg>
      {/* </SearchIconDiv> */}
    </SearchBtnDiv>
  );
};

const SearchBtnDiv = styled.button`
  all: unset;
  width: 40px;
  height: 40px;
  background-color: ${({ theme }) => theme.colors.magenta};
  border-radius: 30px;
  cursor: pointer;
`;

const SearchSvg = styled.svg`
  fill: white;
  width: 20px;
  height: 20px;
  overflow: visible;
  stroke: white;
  stroke-width: 3px;
`;

export default SearchBtn;
