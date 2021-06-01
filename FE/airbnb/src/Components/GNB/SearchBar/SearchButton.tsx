import { Link } from "react-router-dom";
import { useRecoilValue, useRecoilState } from "recoil";
import {
  selectInputState,
  priceState,
  peopleState,
} from "@/Components/GNB/GNBStore";
import { searchState } from "@/Components/Search/SearchStore";
import { postApi } from "@/Utils/api";
import { SearchBar as S } from "@/Components/GNB/GNBStlyes";

const SearchButton = () => {
  const checkIn = useRecoilValue(selectInputState.checkIn);
  const checkOut = useRecoilValue(selectInputState.checkOut);
  const lowerPrice = useRecoilValue(priceState.lowerLimit);
  const upperPrice = useRecoilValue(priceState.upperLimit);
  const people =
    useRecoilValue(peopleState.adultCount) +
    useRecoilValue(peopleState.childrenCount);
  const [searchData, setSearchData] = useRecoilState(searchState);

  const onClick = () => {
    const body = {
      price: {
        max: upperPrice,
        min: lowerPrice,
      },
      people: people,
      schedule: {
        checkIn,
        checkOut,
      },
    };
    console.log(body);
    postApi
      .rooms(body)
      .then((res) => res.json())
      .then((json) => setSearchData(json));
  };
  return (
    <Link
      to={{
        pathname: "/search",
        state: { searchData },
      }}
    >
      <S.SearchButton onClick={onClick} />
    </Link>
  );
};

export default SearchButton;
