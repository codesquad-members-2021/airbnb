import { useRecoilValue } from "recoil";
import { selectInputState } from "@/Components/GNB/GNBStore";
import { searchState } from "@/Components/Search/SearchStore";
import { Accomodation as S } from "@/Components/Search/SearchStyles";

const SelectedInfo = () => {
  const checkIn = useRecoilValue(selectInputState.checkIn);
  const checkOut = useRecoilValue(selectInputState.checkOut);
  const price = useRecoilValue(selectInputState.price);
  const people = useRecoilValue(selectInputState.people);
  const rooms = useRecoilValue(searchState);

  return (
    <S.SelectedInfo>
      {rooms.length}개의 숙소 • {checkIn} • {checkOut} • {price} • {people}
    </S.SelectedInfo>
  );
};

export default SelectedInfo;
