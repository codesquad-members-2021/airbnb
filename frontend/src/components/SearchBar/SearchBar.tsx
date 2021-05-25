import styled from "styled-components";
import { useState } from "react";
import Calendar from "components/Calendar/Calendar";
import Guests from "components/Guests/Guests";
import RoomPrice from "components/RoomPrice/RoomPrice";
import SearchFilter from "components/SearchBar/SearchFilter";

type State = {
  //질문 : 이렇게 통째로 type 정의해서 써도 괜찮나요? 분리해야 하나요?
  month?: number;
  date?: number;
  min?: number;
  max?: number;
  guest?: number;
  toddler?: number;
};
const initialState = {
  calendar: { month: 0, date: 0 },
  price: { min: 0, max: 0 },
  guests: { guest: 0, toddler: 0 },
};

enum FilterKind {
  checkIn = "CHECK_IN",
  checkOut = "CHECK_OUT",
  price = "PRICE",
  guest = "GUESTS",
}
const SEARCH_FILTER = ["CHECK_IN", "CHECK_OUT", "PRICE", "GUESTS"];

const SearchBar = () => {
  //취소 버튼 눌렀을 때 상태 리셋을 어떻게 할 것인가?
  const [checkIn, setCheckIn] = useState<State>(initialState.calendar);
  const [checkOut, setCheckOut] = useState<State>(initialState.calendar);
  const [price, setPrice] = useState<State>(initialState.price);
  const [guests, setGuests] = useState<State>(initialState.guests);

  const getFilterState = (type: string) => {
    switch (type) {
      case FilterKind.checkIn:
        return checkIn;
      case FilterKind.checkOut:
        return checkOut;
      case FilterKind.price:
        return price;
      case FilterKind.guest:
        return guests;
      default:
        throw new Error("Unhandled Filter Type");
    }
  };
  //state따로 있는데 reducer함수 같이 써도 되나요..?
  return (
    <>
      <SearchBarLayout>
        <SearchBarDiv>
          {SEARCH_FILTER.map((type, idx) => (
            <SearchFilter
              key={`filter-${idx}`}
              filterType={type}
              filterState={getFilterState(type)}
            />
          ))}
        </SearchBarDiv>
        <SearchBarButton>검색</SearchBarButton>
      </SearchBarLayout>
      <Calendar />
      <RoomPrice />
      <Guests />
    </>
  );
};
//검색 이라는 글씨를 넣었다 뺐다해야됨

const SearchBarDiv = styled.div`
  display: flex;
  justify-content: space-between;

  width: 100%;
  position: relative;
`;
const SearchBarButton = styled.button`
  position: absolute;
  right: 0;
  top: 20%;
  width: 10%;
  padding: 8px 16px 8px 8px;
  /* width: 90px; */
  height: 42px;

  background: #e84c60;
  color: white;
  font-weight: bold;
  font-size: 1.2rem;
  border: none;
  border-radius: 30px;
  margin: 0 1%;
`;

const SearchBarLayout = styled.div`
  position: relative;
  display: flex;
  width: 916px;
  height: 76px;
  margin: 2rem auto 0 auto;
  background: #ffffff;
  border: 1px solid #bdbdbd;
  border-radius: 60px;

  @media (max-width: 1024px) {
    margin: 0 auto;
    width: 100%;
  }
`;

export default SearchBar;
