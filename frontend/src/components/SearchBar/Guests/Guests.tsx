import { useState } from "react";
import GuestsModal from "./GuestsModal";
import * as S from "components/SearchBar/SearchBarStyles";
import CancelButton from "components/common/CancelButton";
import { guestsClickState, searchBarClickState } from "recoil/Atoms";
import { useRecoilValue, useSetRecoilState } from "recoil";

const Guests = () => {
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);
  const isClicked = useRecoilValue(guestsClickState);
  const handleClick = () => {
    setsSearchBarClick("GUESTS");
  };

  return (
    <>
      <S.SearchBarBox
        _width="30%"
        className="check-in"
        _clicked={isClicked}
        onClick={handleClick}
      >
        <S.SearchBarTitle>인원</S.SearchBarTitle>
        <S.SearchBarText _overFlow={true}>게스트 추가</S.SearchBarText>
        <CancelButton _right="30%" type={"GUESTS"} />
      </S.SearchBarBox>
      {isClicked && <GuestsModal />}
    </>
  );
};

export default Guests;
