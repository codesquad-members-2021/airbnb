import { useRecoilValue } from "recoil";
import {
  showMiniSearchBarState,
  isSearchPageState,
} from "@/Components/GNB/GNBStore";
import Logo from "./Logo";
import Menu from "./Menu/Menu";
import MyPage from "./MyPage/MyPage";
import SearchBar from "./SearchBar/SearchBar";
import MiniSearchBar from "./MiniSearchBar/MiniSearchBar";
import { GNB as S } from "./GNBStlyes";

const GNB = () => {
  const showMiniSearchBarFlag = useRecoilValue(showMiniSearchBarState);
  const isSearchPage = useRecoilValue(isSearchPageState);
  return (
    <S.GNB
      isSearchPage={isSearchPage}
      showMiniSearchBarFlag={showMiniSearchBarFlag}
    >
      <Logo />
      <S.SearchBarWrapper>
        <Menu />
        <MiniSearchBar />
        <SearchBar />
      </S.SearchBarWrapper>
      <MyPage />
    </S.GNB>
  );
};

export default GNB;
