import RoomPriceModal from "components/SearchBar/RoomPrice/RoomPriceModal";
import * as S from "components/SearchBar/SearchBarStyles";
import CancelButton from "components/common/CancelButton";
import { roomPriceClickState, searchBarClickState } from "recoil/Atoms";
import { useRecoilValue, useSetRecoilState } from "recoil";
import { search } from "util/enum";
const RoomPrice = () => {
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);
  const isClicked = useRecoilValue(roomPriceClickState);

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
        <S.SearchBarText>100,000~1,000,000</S.SearchBarText>
        <CancelButton type={search.room} />
      </S.SearchBarBox>
      <RoomPriceModal />
    </>
  );
};

export default RoomPrice;
