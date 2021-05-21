import React, { useReducer, useRef, useEffect } from 'react';
import styled from 'styled-components';
import Price from './Price';
import Check from './Check';
import People from './People';
import CheckModal from './Check/CheckModal';
import PriceModal from './Price/PriceModal';
import PeopleModal from './People/PeopleModal';
import SearchBtn from './SearchBtn';
import modalClickReducer from '../../utils/reducer/modalClickReducer';

const Search = () => {
  const modalElement = useRef();

  useEffect(() => {
    const modalOff = (e) => {
      if (modalElement.current && !modalElement.current.contains(e.target)) {
        dispatch({ type: 'ModalOff' });
      }
    };
    document.addEventListener('mousedown', modalOff);
    return () => {
      document.removeEventListener('mousedown', modalOff);
    };
  }, [modalElement]);

  const [clicked, dispatch] = useReducer(modalClickReducer, {
    checkInOut: false,
    price: false,
    people: false,
  });

  const { checkInOut, price, people } = clicked;
  return (
    <SearchDiv className="searchBar">
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
