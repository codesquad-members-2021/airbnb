import styled from "styled-components";
import Calendar from "./Calendar";
import Guests from "./Guests";
import RoomPrice from "./RoomPrice";
const SearchBar = () => {
  return (
    <SearchBarLayout>
      {/* <Calendar /> */}
      <RoomPrice />
      <Guests />
    </SearchBarLayout>
  );
};

const SearchBarLayout = styled.div`
  display: flex;
  width: 916px;
  height: 76px;
  margin: 2rem auto 0 auto;
  background: #ffffff;
  border: 1px solid #bdbdbd;
  border-radius: 60px;

  @media (max-width: 1024px) {
    margin: 0 auto;
    width: 100%;
  }
`;

export default SearchBar;
