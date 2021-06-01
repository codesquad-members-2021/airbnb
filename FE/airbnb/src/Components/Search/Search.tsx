import { useEffect } from "react";
import { useSetRecoilState } from "recoil";
import { showMiniSearchBarState } from "@/Components/GNB/GNBStore";
import GNB from "@/Components/GNB/GNB";
import { Search as S } from "@/Components/Search/SearchStyles";

const Search = (props: any) => {
  const setShowMiniSearchBarFlag = useSetRecoilState(showMiniSearchBarState);

  useEffect(() => {
    setShowMiniSearchBarFlag(true);
  }, [setShowMiniSearchBarFlag]);

  return (
    <S.Search>
      <GNB />
    </S.Search>
  );
};

export default Search;
