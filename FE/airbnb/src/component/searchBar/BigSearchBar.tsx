import React, { useState } from "react";
import styled from "styled-components";
import Period from "component/searchBar/Period";
import Fare from "component/searchBar/Fare";
import Guest from "component/searchBar/Guest";
import SearchBtn from "component/searchBar/SearchBtn";
import CalendarModal from "component/searchBar/calendar/CalendarModal";
import FareModal from "component/searchBar/fareChart/FareModal";
import GuestModal from "component/searchBar/guestList/GuestModal";
import { openModal, closeModalByBodyClick } from "hooks/modalHooks";

function BigSearchBar() {
  const [isOpenCalendar, setIsOpenCalendar] = useState<boolean>(false);
  const [isOpenFare, setIsOpenFare] = useState<boolean>(false);
  const [isOpenGuest, setIsOpenGuest] = useState<boolean>(false);
  const handleClickPeriod = (e: React.MouseEvent) =>
    openModal({ e, open: setIsOpenCalendar, close: [setIsOpenFare, setIsOpenGuest] });
  const handleClickFare = (e: React.MouseEvent) =>
    openModal({ e, open: setIsOpenFare, close: [setIsOpenCalendar, setIsOpenGuest] });
  const handleClickGuest = (e: React.MouseEvent) =>
    openModal({ e, open: setIsOpenGuest, close: [setIsOpenCalendar, setIsOpenFare] });
  closeModalByBodyClick(setIsOpenCalendar, setIsOpenFare, setIsOpenGuest);
  return (
    <SearchBarContainer>
      <SearchBarList>
        <Period onClick={handleClickPeriod} />
        {isOpenCalendar && <CalendarModal />}
        <Fare onClick={handleClickFare} />
        {isOpenFare && <FareModal />}
        <Guest onClick={handleClickGuest} />
        {isOpenGuest && <GuestModal />}
        <SearchBtn />
      </SearchBarList>
    </SearchBarContainer>
  );
}

export default BigSearchBar;

const SearchBarContainer = styled.div`
  width: 916px;
  height: 76px;
  border: 1px solid ${({ theme }) => theme.color.gray5};
  border-radius: ${({ theme }) => theme.borderRadius.l};
  background-color: #fff;

  position: absolute;
  top: 110px;
  left: 50%;
  transform: translateX(-50%);
`;

const SearchBarList = styled.ul`
  display: flex;
  box-sizing: border-box;
  li {
    position: relative;
  }
  .betweenBorder::after {
    content: "";
    display: block;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    right: 0;
    height: 40px;
    border-right: 1px solid ${({ theme }) => theme.color.gray5};
  }
`;
