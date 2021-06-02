import { useRecoilValue, useRecoilState, useSetRecoilState } from "recoil";
import {
  selectInputState,
  showMiniSearchBarState,
} from "@/Components/GNB/GNBStore";
import { searchBackgroundState } from "@/Components/Search/SearchStore";
import SelectedInfo from "./SelectedInfo";
import SearchButton from "./SearchButton";
import { MiniSearchBar as S } from "@/Components/GNB/GNBStlyes";

const MiniSearchBar = () => {
  const checkIn = useRecoilValue<string>(selectInputState.checkIn);
  const checkOut = useRecoilValue<string>(selectInputState.checkOut);
  const price = useRecoilValue<string>(selectInputState.price);
  const people = useRecoilValue<string>(selectInputState.people);
  const [showMiniSearchBarFlag, setShowMiniSearchBarFlag] = useRecoilState(
    showMiniSearchBarState
  );
  const setSearchBackgroundFlag = useSetRecoilState(searchBackgroundState);

  const handleClick = () => {
    setShowMiniSearchBarFlag(false);
    setSearchBackgroundFlag(true);
  };

  return (
    <S.MiniSearchBar
      showMiniSearchBarFlag={showMiniSearchBarFlag}
      onClick={handleClick}
    >
      <SelectedInfo selectedInfo={`${checkIn} ~ ${checkOut}`} />
      <SelectedInfo selectedInfo={price} />
      <SelectedInfo selectedInfo={people} />
      <SearchButton />
    </S.MiniSearchBar>
  );
};

export default MiniSearchBar;
