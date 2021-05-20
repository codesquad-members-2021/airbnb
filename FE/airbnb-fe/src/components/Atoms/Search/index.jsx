import React, { useReducer, useRef, useEffect } from 'react';
import styled from 'styled-components';
import Price from './Price';
import Check from './Check';
import People from './People';
import CheckModal from './Check/CheckModal';
import PriceModal from './Price/PriceModal';
import PeopleModal from './People/PeopleModal';
import SearchBtn from './SearchBtn';

const Search = () => {
  const modalElement = useRef();

  useEffect(() => {
    const modalOff = (e) => {
      // console.log('e : ', e);
      // console.log('target :', e.target);
      // console.log('modalElement.current:', modalElement.current);

      if (modalElement.current && !modalElement.current.contains(e.target)) {
        dispatch({ type: 'ModalOff' });
      }
    };
    document.addEventListener('mousedown', modalOff);
    return () => {
      document.removeEventListener('mousedown', modalOff);
    };
  }, [modalElement]);

  const isClickedReducer = (state, action) => {
    switch (action.type) {
      case 'CHECKINOUT':
        return {
          checkInOut: !state.checkInOut,
          price: false,
          people: false,
        };
      case 'PRICE':
        return {
          checkInOut: false,
          price: !state.price,
          people: false,
        };
      case 'PEOPLE':
        return {
          checkInOut: false,
          price: false,
          people: !state.people,
        };
      case 'ModalOff':
        return {
          checkInOut: false,
          price: false,
          people: false,
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
        <ModalDiv ref={modalElement}>
          {checkInOut && <CheckModal />}
          {price && <PriceModal />}
          {people && <PeopleModal />}
        </ModalDiv>
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
  border-radius: 3rem;
  background-color: ${({ theme }) => theme.colors.white};
`;

const SearchBtnWrap = styled.div`
  position: absolute;
  right: 1rem;
`;
const ModalDiv = styled.div``;

export default Search;
