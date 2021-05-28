import styled from "styled-components";
import Calendar from "components/SearchBar/Calendar/Calendar";
import Guests from "components/SearchBar/Guests/Guests";
import RoomPrice from "components/SearchBar/RoomPrice/RoomPrice";
import { ReactComponent as largeSearchBtn } from "image/largeSearchBtn.svg";
import { ReactComponent as smallSearchBtn } from "image/smallSearchBtn.svg";
import {
  useRecoilState,
  useRecoilValue,
  useResetRecoilState,
  useSetRecoilState,
} from "recoil";
import React, { useState, useEffect } from "react";
import { searchBarClickState } from "recoil/Atoms";

const SearchBar = () => {
  // const Reset = useResetRecoilState(searchBarClickState);
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);

  useEffect(() => {
    document.body.addEventListener("click", ClosePopup);
  }, []);

  const ClosePopup = (e: MouseEvent): void => {
    console.log(33);
    const target = e.target as HTMLElement;
    if (!target.closest(".search-bar")) {
      console.log("Sss");

      setsSearchBarClick("RESET"); //recoil reset 으로 바꿀 수 있을 듯
    }
  };
  return (
    <SearchBarLayout>
      <SearchBarContainer className="search-bar">
        <Calendar />
        <RoomPrice />
        <Guests />
        <SearchBarButton />
      </SearchBarContainer>
    </SearchBarLayout>
  );
};
//검색 이라는 글씨를 넣었다 뺐다해야됨

const SearchBarButton = styled(smallSearchBtn)`
  position: absolute;
  right: 1.6rem;
  top: 1.7rem;
  cursor: pointer;
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
  width: 65%;
  display: flex;
  margin: 0 auto;
  flex-direction: column;
  align-items: center;
`;

export default SearchBar;
// const initialState = {
//   calendar: { month: 0, date: 0 },
//   price: { min: 0, max: 0 },
//   guests: { guest: 0, toddler: 0 },
// };
