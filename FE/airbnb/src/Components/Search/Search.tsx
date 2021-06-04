import { useEffect } from "react";
import { useSetRecoilState, useRecoilState } from "recoil";
import {
  showMiniSearchBarState,
  isSearchPageState,
} from "@/Components/GNB/GNBStore";
import { searchBackgroundState } from "@/Components/Search/SearchStore";
import GNB from "@/Components/GNB/GNB";
import Accomodation from "./Accomodation/Accomodation";
import Map from "./Map/Map";
import AccomodationModal from "./AccomodationModal/AccomodationModal";
import { Search as S } from "@/Components/Search/SearchStyles";
import { SearchBackground } from "@/Components/Search/SearchStyles";

const Search = () => {
  const setShowMiniSearchBarFlag = useSetRecoilState(showMiniSearchBarState);
  const setIsSearchPageState = useSetRecoilState(isSearchPageState);
  const [searchBackgroundFlag, setSearchBackgroundFlag] = useRecoilState(
    searchBackgroundState
  );

  const handleOnClick = () => {
    setShowMiniSearchBarFlag(true);
    setSearchBackgroundFlag(false);
  };

  useEffect(() => {
    setShowMiniSearchBarFlag(true);
    setIsSearchPageState(true);
    setSearchBackgroundFlag(false);
  }, [setShowMiniSearchBarFlag, setIsSearchPageState, setSearchBackgroundFlag]);

  return (
    <>
      <SearchBackground
        onClick={handleOnClick}
        searchBackgroundFlag={searchBackgroundFlag}
      />
      <GNB />
      <S.Search>
        <Accomodation />
        <Map />
        <AccomodationModal />
      </S.Search>
    </>
  );
};

export default Search;
