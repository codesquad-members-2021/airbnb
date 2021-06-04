import React, { useReducer, useRef, useEffect, createContext } from 'react';
import styled from 'styled-components';
import Price from './Price';
import Check from './Check';
import People from './People';
import CheckModal from '../Modal/CheckModal';
import PriceModal from '../Modal/PriceModal';
import PeopleModal from '../Modal/PeopleModal';
import SearchBtn from './SearchBtn';
import modalClickReducer from '../../utils/reducer/modalClickReducer';
import peopleReducer from '../../utils/reducer/peopleReducer';
import priceReducer from '../../utils/reducer/priceReducer';
import calendarReducer from '../../utils/reducer/calendarReducer';

export const SearchContext = createContext();

const Search = ({ matchParam, barType }) => {
  const modalElement = useRef();

  useEffect(() => {
    const modalOff = (e) => {
      if (modalElement.current && !modalElement.current.contains(e.target)) {
        modalDispatch({ type: 'EVERY_MODAL_OFF' });
      }
    };
    document.addEventListener('mousedown', modalOff);
    return () => {
      document.removeEventListener('mousedown', modalOff);
    };
  }, [modalElement]);

  useEffect(() => {
    if (!matchParam) return;

    const checkInDate = matchParam['checkIn'].split('-').map(Number);
    const checkOutDate = matchParam['checkOut'].split('-').map(Number);

    priceDispatch({
      type: 'SET_PRICE_PARAM',
      payload: {
        minPrice: parseInt(matchParam.minPrice),
        maxPrice: parseInt(matchParam.maxPrice),
      },
    });
    peopleDispatch({
      type: 'SET_PEOPLE_PARAM',
      payload: {
        adult: parseInt(matchParam.adults),
        child: parseInt(matchParam.children),
        baby: parseInt(matchParam.infants),
      },
    });
    calDispatch({
      type: 'ADD_CHECKIN_DATA',
      payload: {
        year: checkInDate[0],
        month: checkInDate[1],
        day: checkInDate[2],
      },
    });
    calDispatch({
      type: 'ADD_CHECKOUT_DATA',
      payload: {
        year: checkOutDate[0],
        month: checkOutDate[1],
        day: checkOutDate[2],
      },
    });
  }, [matchParam]);

  const [clicked, modalDispatch] = useReducer(modalClickReducer, {
    checkInOut: false,
    price: false,
    people: false,
  });

  const [peopleCount, peopleDispatch] = useReducer(peopleReducer, {
    adult: 0,
    child: 0,
    baby: 0,
  });

  const [priceData, priceDispatch] = useReducer(priceReducer, {
    minPrice: 0,
    maxPrice: 1000000,
  });

  const [calendarData, calDispatch] = useReducer(calendarReducer, {
    checkIn: { year: 0, month: 0, day: 0 },
    checkOut: { year: 0, month: 0, day: 0 },
  });

  const { checkInOut, price, people } = clicked;

  return (
    <SearchContext.Provider
      value={{
        peopleCount,
        peopleDispatch,
        priceDispatch,
        priceData,
        calDispatch,
        calendarData,
        clicked,
      }}
    >
      {barType === 'normal' ? (
        <SearchDiv className="searchBar">
          <SearchWrap>
            <Check dispatch={modalDispatch}></Check>
            <Price dispatch={modalDispatch}></Price>
            <People dispatch={modalDispatch}></People>
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
      ) : (
        <SearchDiv className="searchBar">
          <MiniSearchWrap>
            <div>{`${calendarData.checkIn.month}월${calendarData.checkIn.day}일~${calendarData.checkOut.month}월${calendarData.checkOut.day}일`}</div>
            <LineDiv />
            <div>{`₩${priceData.minPrice} ~ ₩${priceData.maxPrice}`}</div>
            <LineDiv />
            <div>{`게스트 ${peopleCount.adult + peopleCount.child}명`}</div>
            <MiniSearchBtnWrap>
              <SearchBtn />
            </MiniSearchBtnWrap>
          </MiniSearchWrap>
        </SearchDiv>
      )}
    </SearchContext.Provider>
  );
};

const SearchDiv = styled.div`
  display: flex;
  justify-content: center;
  /* transition: 0.2s ease-in; */
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
  border: 1px solid ${({ theme }) => theme.colors.gray4};
  cursor: pointer;
`;

const SearchBtnWrap = styled.div`
  position: absolute;
  right: 1rem;
`;
const ModalDiv = styled.div``;

const MiniSearchWrap = styled.div`
  position: relative;
  display: flex;
  justify-content: space-around;
  align-items: center;
  width: 410px;
  height: 48px;
  border: 1px solid ${({ theme }) => theme.colors.gray4};
  box-sizing: border-box;
  border-radius: 30px;
  font-size: ${({ theme }) => theme.fontSizes.TS};
  font-weight: 400;
  padding-left: 1rem;
  padding-right: 3rem;
`;

const LineDiv = styled.div`
  border-left: 1px solid ${({ theme }) => theme.colors.gray5};
  height: 1.5rem;
`;
const MiniSearchBtnWrap = styled.div`
  position: absolute;
  right: 0.3rem;
`;
export default Search;
