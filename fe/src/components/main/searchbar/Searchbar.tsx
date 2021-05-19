import { Box } from "@material-ui/core";
import styled from "styled-components";
const SearchBar = () => {
  return (
    <Box width="100%" display="flex" justifyContent="center">
      <StyledSearchBar></StyledSearchBar>
    </Box>
  );
};

export default SearchBar;

const StyledSearchBar = styled.div`
  margin-top: 2.4rem;
  display: flex;
  flex-direction: row;
  align-items: center;
  background-color: white;
  width: 63%;
  height: 4.75rem;
  border-radius: 3.7rem;
`;
