import { Box } from "@material-ui/core";
import { isHotelPage } from "atoms/searchbarAtom";
import { useRecoilValue } from "recoil";
import styled from "styled-components";
import DateInput from "./date-input/DateInput";
import LocationInput from "./location-input/LoactionInput";
import PeopleInput from "./people-input/PeopleInput";
import PriceInput from "./price-input/PriceInput";
import SearchBarBtn from "./SearchBarBtn";
const SearchBar = () => {
  const isHotelList = useRecoilValue(isHotelPage);

  return (
    <Box width="100%" display="flex" justifyContent="center">
      <StyledSearchBar aria-checked={isHotelList}>
        <LocationInput />
        <SeparateBar />
        <DateInput />
        <SeparateBar />
        <PriceInput />
        <SeparateBar />
        <PeopleInput />
        <SearchBarBtn />
      </StyledSearchBar>
    </Box>
  );
};

export default SearchBar;

const StyledSearchBar = styled.div`
  margin-top: 2.4rem;
  display: flex;
  flex-direction: row;
  align-items: center;
  background-color: ${({ theme }) => theme.color.White};
  width: 65rem;
  height: 5rem;
  border-radius: 3.7rem;
  position: relative;
  padding: 0 5rem 0 2rem;
  border: ${({ theme }) => theme.border.Gray5};
  &[aria-checked="true"] {
    position: absolute;
    width: 43rem;
    top: 0;
    height: 4rem;
  }
`;

const SeparateBar = styled.div`
  width: 1px;
  height: 70%;
  background-color: ${({ theme }) => theme.color.Gray5};
`;
