import { useRecoilValue } from "recoil";
import { selectBoxState } from "@/Components/GNB/GNBStore";
import SelectBox from "./SelectBox/SelectBox";
import SearchButton from "./SearchButton";
import CalendarModal from "./CalendarModal/CalendarModal";
import PriceModal from "./PriceModal/PriceModal";
import PeopleModal from "./PeopleModal/PeopleModal";
import { SearchBar as S } from "@/Components/GNB/GNBStlyes";

const SearchBar = () => {
  const checkInBoxState = useRecoilValue(selectBoxState.checkInBoxState);
  const checkOutBoxState = useRecoilValue(selectBoxState.checkOutBoxState);
  const priceBoxState = useRecoilValue(selectBoxState.priceBoxState);
  const peopleBoxState = useRecoilValue(selectBoxState.peopleBoxState);

  return (
    <S.SearchBarWrapper>
      <S.SearchBar>
        <SelectBox
          id={checkInBoxState.title}
          title={checkInBoxState.title}
          input={checkInBoxState.input}
          cancleButtonFlag={checkInBoxState.cancleButtonFlag}
        />
        <SelectBox
          id={checkOutBoxState.title}
          title={checkOutBoxState.title}
          input={checkOutBoxState.input}
          cancleButtonFlag={checkOutBoxState.cancleButtonFlag}
        />
        <SelectBox
          id={priceBoxState.title}
          title={priceBoxState.title}
          input={priceBoxState.input}
          cancleButtonFlag={priceBoxState.cancleButtonFlag}
        />
        <SelectBox
          id={peopleBoxState.title}
          title={peopleBoxState.title}
          input={peopleBoxState.input}
          cancleButtonFlag={peopleBoxState.cancleButtonFlag}
        />
        <SearchButton />
      </S.SearchBar>
      <CalendarModal />
      <PriceModal />
      <PeopleModal />
    </S.SearchBarWrapper>
  );
};

export default SearchBar;
