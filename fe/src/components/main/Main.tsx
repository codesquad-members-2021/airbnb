import styled from "styled-components";
import Header from "./header/Header";
import SearchBar from "./searchbar/Searchbar";  

const Main = () => {
  
  return (
    <StyledMain>
      <Header />
      <SearchBar />
    </StyledMain>
  );
};

export default Main;

const StyledMain = styled.main`
  padding-top: 2.5rem;
  width: 100%;
  height: 80vh;
  background: url("main.jpg") center no-repeat;
  background-size: cover;
`;
