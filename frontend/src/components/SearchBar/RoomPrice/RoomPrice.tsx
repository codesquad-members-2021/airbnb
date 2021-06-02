import RoomPriceModal from "components/SearchBar/RoomPrice/RoomPriceModal";
import * as S from "components/SearchBar/SearchBarStyles";
import CancelButton from "components/common/CancelButton";
import {
  roomPriceClickState,
  searchBarClickState,
  roomPriceState,
} from "recoil/Atoms";
import { useRecoilState, useRecoilValue, useSetRecoilState } from "recoil";
import { search } from "util/enum";
const RoomPrice = () => {
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);
  const isClicked = useRecoilValue(roomPriceClickState);
  const roomPrice = useRecoilValue(roomPriceState);
  const { min, max } = roomPrice;
  return (
    <>
      <S.SearchBarBox
        _width="30%"
        className="price"
        _clicked={isClicked}
        onClick={() => {
          setsSearchBarClick(search.room);
        }}
      >
        <S.SearchBarTitle>요금</S.SearchBarTitle>
        <S.SearchBarText>
          {min
            ? `${min?.toLocaleString()}원~${max?.toLocaleString()}원`
            : "요금"}
        </S.SearchBarText>
        <CancelButton type={search.room} />
      </S.SearchBarBox>
      <RoomPriceModal />
    </>
  );
};

export default RoomPrice;
