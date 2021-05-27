import RoomPriceModal from "components/SearchBar/RoomPrice/RoomPriceModal";
import * as S from "components/SearchBar/SearchBarStyles";
import CancelButton from "components/common/CancelButton";
const RoomPrice = () => {
  return (
    <>
      <S.SearchBarBox _width="20%" className="price">
        <S.SearchBarTitle>요금</S.SearchBarTitle>
        <S.SearchBarText>100,000~1,000,000</S.SearchBarText>
        {/* <CancelButton /> */}
      </S.SearchBarBox>
      <RoomPriceModal />
    </>
  );
};

export default RoomPrice;
