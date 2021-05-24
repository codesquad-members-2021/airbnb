import Logo from "./Logo";
import Menu from "./Menu/Menu";
import MyPage from "./MyPage/MyPage";
import SearchBar from "./SearchBar/SearchBar";
// import MiniSearchBar from "./MiniSearchBar/MiniSearchBar";
import { GNB as S } from "./GNBStlyes";

const GNB = () => {
  return (
    <S.GNB>
      <Logo />
      <Menu />
      <MyPage />
      <SearchBar />
      {/* <MiniSearchBar /> */}
    </S.GNB>
  );
};

export default GNB;
