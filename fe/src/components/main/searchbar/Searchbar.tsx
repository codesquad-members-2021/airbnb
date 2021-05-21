import { Box } from "@material-ui/core";
import styled from "styled-components";
import DateInput from "./date-input/DateInput";
import PeopleInput from "./people-input/PeopleInput";
import PriceInput from "./price-input/PriceInput";
import SearchBarBtn from "./SearchBarBtn";
const SearchBar = () => {
  return (
    <Box width="100%" display="flex" justifyContent="center">
      <StyledSearchBar>
        <DateInput />
        <SeperateBar />
        <PriceInput />
        <SeperateBar />
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
  width: 63%;
  height: 5rem;
  border-radius: 3.7rem;
  position: relative;
  padding: 0 5rem 0 2rem;
  border: ${({ theme }) => theme.border.Gray5};
`;

const SeperateBar = styled.div`
  width: 1px;
  height: 70%;
  background-color: ${({ theme }) => theme.color.Gray5};
`;
