import { useRecoilValue } from "recoil";
import { selectedInfoState } from "@/Components/GNB/GNBStore";
import SearchButton from "./SearchButton";
import SelectedInfo from "./SelectedInfo";
import { MiniSearchBar as S } from "@/Components/GNB/GNBStlyes";

const MiniSearchBar = () => {
  // 검색 눌러졌을때 setState
  const selectedInfo = useRecoilValue(selectedInfoState);
  return (
    <S.MiniSearchBar>
      {selectedInfo.map((info) => (
        <SelectedInfo key={info} selectedInfo={info} />
      ))}
      <SearchButton />
    </S.MiniSearchBar>
  );
};

export default MiniSearchBar;
