import React from 'react';
import styled from 'styled-components';
import { ReactComponent as searchIcon } from '../../../utils/icons/SearchIcon.svg';

const SearchBtn = () => {
  return (
    <SearchBtnDiv>
      {/* <SearchIconDiv> */}
      <SearchIcon />
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
const SearchIconDiv = styled.div`
  width: 40px;
`;
const SearchIcon = styled(searchIcon)`
  stroke: white;
  width: 30px;
`;

export default SearchBtn;
