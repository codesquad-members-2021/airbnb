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
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);

  useEffect(() => {
    document.body.addEventListener("click", ClosePopup);
  }, []);

  const ClosePopup = (e: MouseEvent): void => {
    const target = e.target as HTMLElement;
    if (!target.closest(".search-bar")) setsSearchBarClick("RESET"); //recoil reset 으로 ?
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

const SearchBarButton = styled(smallSearchBtn)`
  position: absolute;
  right: 1.6rem;
  top: 1.7rem;
  cursor: pointer;
`;

const SearchBarContainer = styled.div`
  position: relative;
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
