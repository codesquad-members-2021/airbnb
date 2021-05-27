import styled from "styled-components";
import { useState } from "react";
import Calendar from "components/SearchBar/Calendar/Calendar";
import Guests from "components/SearchBar/Guests/Guests";
import RoomPrice from "components/SearchBar/RoomPrice/RoomPrice";
import { ReactComponent as largeSearchBtn } from "image/largeSearchBtn.svg";
import { ReactComponent as smallSearchBtn } from "image/smallSearchBtn.svg";
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

  //state따로 있는데 reducer함수 같이 써도 되나요..?
  return (
    <SearchBarLayout>
      <SearchBarContainer>
        <Calendar />
        <RoomPrice />
        <Guests />
        <SearchBarButton>검색</SearchBarButton>
      </SearchBarContainer>
    </SearchBarLayout>
  );
};
//검색 이라는 글씨를 넣었다 뺐다해야됨

const SearchBarButton = styled(smallSearchBtn)`
  position: absolute;
  right: 1.6rem;
  top: 1.7rem;
`;

const SearchBarContainer = styled.div`
  position: relative; //여기
  display: flex;
  width: 100%;
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

const SearchBarLayout = styled.div`
  position: relative; //여기
  width: 55%;
  display: flex;
  margin: 0 auto;
  flex-direction: column;
  align-items: center;
`;

export default SearchBar;
