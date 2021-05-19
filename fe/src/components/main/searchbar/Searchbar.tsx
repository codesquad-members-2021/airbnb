import { Center } from "@chakra-ui/layout";
import styled from "styled-components";
const SearchBar = () => {

  return (<Center w='100%' ><StyledSearchBar></StyledSearchBar></Center>);
};

export default SearchBar;

const StyledSearchBar = styled.div`
  margin-top: 2.5rem;
  display: flex;
  flex-direction: row;
  align-items: center;
  background-color: white;
  width: 63%;
  height: 4.75rem;
  border-radius: 3.7rem;
`;
