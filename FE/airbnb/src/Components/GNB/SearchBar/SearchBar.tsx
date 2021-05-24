import { useRecoilValue } from "recoil";
import { selectBoxState } from "@/Components/GNB/GNBRecoil";
import SelectBox from "./SelectBox/SelectBox";
import SearchButton from "./SearchButton";
import { SearchBar as S } from "@/Components/GNB/GNBStlyes";

const SearchBar = () => {
  // 모달창 값 변경 시 description변경 => useSetRecoilValue쓰면 됨
  const selectBoxData = useRecoilValue(selectBoxState);

  return (
    <S.SearchBarWrapper>
      <S.SearchBar>
        {selectBoxData.map(({ title, description, cancleButtonFlag }) => (
          <SelectBox
            key={title}
            {...{ title, description, cancleButtonFlag }}
          />
        ))}
        <SearchButton />
      </S.SearchBar>
    </S.SearchBarWrapper>
  );
};

export default SearchBar;
