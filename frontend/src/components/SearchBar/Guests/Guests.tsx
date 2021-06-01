import GuestsModal from "./GuestsModal";
import * as S from "components/SearchBar/SearchBarStyles";
import CancelButton from "components/common/CancelButton";
import { guestState, guestsClickState, searchBarClickState } from "recoil/Atoms";
import { useRecoilValue, useRecoilState, useSetRecoilState } from "recoil";
import { search } from "util/enum";
const Guests = () => {
  const setsSearchBarClick = useSetRecoilState(searchBarClickState);
  const [ guests, setGuests ] = useRecoilState(guestState);
  const isClicked = useRecoilValue(guestsClickState);

  const getTotalGuestData = () => {
    if (!guests.adult && !guests.child && !guests.toddler) return "게스트 추가";
    else if(!guests.toddler) return `게스트 ${guests.adult + guests.child}명`;
    else return `게스트 ${guests.adult + guests.child}명, 유아 ${guests.toddler}명`;
  }

  return (
    <>
      <S.SearchBarBox
        _width="30%"
        className="check-in"
        _clicked={isClicked}
        onClick={() => {
          setsSearchBarClick(search.guests);
        }}
      >
        <S.SearchBarTitle>인원</S.SearchBarTitle>
        <S.SearchBarText _overFlow={true}>{getTotalGuestData()}</S.SearchBarText>
        <CancelButton _right="30%" type={search.guests} />
      </S.SearchBarBox>
      {isClicked && <GuestsModal />}
    </>
  );
};

export default Guests;
