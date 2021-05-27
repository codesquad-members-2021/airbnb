import React, { useContext } from 'react';
import styled from 'styled-components';
import { SearchContext } from '..';
import SearchButtonSvg from './SearchButtonSvg';

const SearchBtn = () => {
  const { clicked } = useContext(SearchContext);
  const isModalClicked = clicked.checkInOut || clicked.price || clicked.people;

  return (
    <SearchBtnDiv isModalClicked={isModalClicked}>
      <SearchSvgDiv>
        <SearchSvg>
          <SearchButtonSvg />
        </SearchSvg>
      </SearchSvgDiv>
      {isModalClicked ? <SearchWordDiv>검색</SearchWordDiv> : null}
    </SearchBtnDiv>
  );
};

const SearchBtnDiv = styled.div`
  display: flex;
  flex-direction: row;
  gap: 0.5rem;
  align-items: center;
  justify-content: center;
  width: ${({ isModalClicked }) => (isModalClicked ? '90px' : '40px')};
  height: 40px;
  border-radius: 30px;
  color: ${({ theme }) => theme.colors.white};
  background-color: ${({ theme }) => theme.colors.magenta};
  font-size: ${({ theme }) => theme.fontSizes.S};
  font-weight: 700;
  cursor: pointer;
  transition: 0.2s ease-in-out;
`;

const SearchSvgDiv = styled.div`
  display: flex;
  align-items: center;
  padding: 4px 0 0 0;
`;

const SearchWordDiv = styled.div`
  display: flex;
  align-items: center;
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
