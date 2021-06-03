import styled from "styled-components";
import Calendar from "components/SearchBar/Calendar/Calendar";
import Guests from "components/SearchBar/Guests/Guests";
import RoomPrice from "components/SearchBar/RoomPrice/RoomPrice";
import { ReactComponent as largeSearchBtn } from "image/largeSearchBtn.svg";
import { ReactComponent as smallSearchBtn } from "image/smallSearchBtn.svg";
import { useSetRecoilState, useRecoilValue } from "recoil";
import React, { useEffect } from "react";
import {
  searchBarClickState,
  checkInState,
  checkOutState,
  roomPriceState,
  guestState,
} from "recoil/Atoms";
import { search } from "util/enum";
import { Link } from "react-router-dom";

const SearchBar = () => {
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);
  const { min, max } = useRecoilValue(roomPriceState);
  const {
    year: checkInYear,
    month: checkInMonth,
    date: checkInDate,
  } = useRecoilValue(checkInState);
  const {
    year: checkOutYear,
    month: checkOutMonth,
    date: checkOutDate,
  } = useRecoilValue(checkOutState);
  const { adult, child, toddler } = useRecoilValue(guestState);

  useEffect(() => {
    document.body.addEventListener("click", ClosePopup);
  }, []);

  const ClosePopup = (e: MouseEvent): void => {
    const target = e.target as HTMLElement;
    if (!target.closest(".search-bar")) setsSearchBarClick(search.reset);
  };

  return (
    <SearchBarLayout>
      <SearchBarContainer className="search-bar">
        <Calendar />
        <RoomPrice />
        <Guests />
        {checkInMonth && checkOutMonth ? (
          <Link
            to={`/rooms?checkIn=${checkInYear}-${
              checkInMonth + 1
            }-${checkInDate}&checkOut=${checkOutYear}-${
              checkOutMonth + 1
            }-${checkOutDate}&adult=${adult}&child=${child}&toddler=${toddler}&min=${min}&max=${max}`}
          >
            <SearchBarButton />
          </Link>
        ) : (
          <SearchBarButton />
        )}
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
  margin: 0 auto 1rem;
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
  width: 80rem;
  display: flex;
  margin: 0 auto;
  flex-direction: column;
  align-items: center;
`;

export default SearchBar;
