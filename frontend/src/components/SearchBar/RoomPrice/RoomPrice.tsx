import RoomPriceModal from "components/SearchBar/RoomPrice/RoomPriceModal";
import * as S from "components/SearchBar/SearchBarStyles";
import CancelButton from "components/common/CancelButton";
import { useState } from "react";
import { roomPriceClickState, searchBarClickState } from "recoil/Atoms";
import { useRecoilValue, useSetRecoilState } from "recoil";
const RoomPrice = () => {
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);
  const isClicked = useRecoilValue(roomPriceClickState);
  const handleClick = () => {
    setsSearchBarClick("PRICE");
  };

  return (
    <>
      <S.SearchBarBox
        _width="30%"
        className="price"
        _clicked={isClicked}
        onClick={handleClick}
      >
        <S.SearchBarTitle>요금</S.SearchBarTitle>
        <S.SearchBarText>100,000~1,000,000</S.SearchBarText>
        <CancelButton type="GUESTS" />
      </S.SearchBarBox>
      <RoomPriceModal />
    </>
  );
};

export default RoomPrice;
