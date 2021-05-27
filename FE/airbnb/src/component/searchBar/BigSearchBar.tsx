import React, { useState } from "react";
import styled from "styled-components";
import Period from "component/searchBar/Period";
import CalendarModal from "component/searchBar/calendar/CalendarModal";
import Fare from "component/searchBar/Fare";
import Guest from "component/searchBar/Guest";
import SearchBtn from "component/searchBar/SearchBtn";
import { openModal, closeModalByBodyClick } from "hooks/modalHooks";

function BigSearchBar() {
  const [isOpenCalendar, setIsOpenCalendar] = useState<boolean>(false);
  const handleClickPeriod = (e: React.MouseEvent) => openModal({ e, setState: setIsOpenCalendar });
  closeModalByBodyClick(setIsOpenCalendar);
  return (
    <SearchBarContainer>
      <SearchBarList>
        <Period onClick={handleClickPeriod} />
        {isOpenCalendar && <CalendarModal />}
        <Fare />
        <Guest />
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
  li:not(li:last-child)::after {
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
