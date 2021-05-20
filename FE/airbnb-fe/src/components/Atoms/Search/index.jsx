import React, { useReducer } from 'react';
import styled from 'styled-components';
import Price from './Price';
import Check from './Check';
import People from './People';
import CheckModal from './Check/CheckModal';
import PriceModal from './Price/PriceModal';
import PeopleModal from './People/PeopleModal';
import SearchBtn from './SearchBtn';

const Search = () => {
  const isClickedReducer = (state, action) => {
    switch (action.type) {
      case 'CHECKINOUT':
        return {
          ...state,
          checkInOut: !state.checkInOut,
        };
      case 'PRICE':
        return {
          ...state,
          price: !state.price,
        };
      case 'PEOPLE':
        return {
          ...state,
          people: !state.people,
        };
      default:
        return;
    }
  };

  const [clicked, dispatch] = useReducer(isClickedReducer, {
    checkInOut: false,
    price: false,
    people: false,
  });

  const { checkInOut, price, people } = clicked;

  return (
    <SearchDiv>
      <SearchWrap>
        <Check dispatch={dispatch}></Check>
        <Price dispatch={dispatch}></Price>
        <People dispatch={dispatch}></People>
        <SearchBtnWrap>
          <SearchBtn />
        </SearchBtnWrap>
        {checkInOut && <CheckModal />}
        {price && <PriceModal />}
        {people && <PeopleModal />}
      </SearchWrap>
    </SearchDiv>
  );
};

const SearchDiv = styled.div`
  display: flex;
  justify-content: center;
  /* width: 916px; */
`;
const SearchWrap = styled.div`
  position: relative;
  height: 76px;
  width: 916px;
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
