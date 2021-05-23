import styled from "styled-components";
import Calendar from "./Calendar";
import Guests from "./Guests";
import RoomPrice from "./RoomPrice";
const SearchBar = () => {
  return (
    <>
      <SearchBarLayout>
        <Calendar />
        {/* <RoomPrice /> */}
        <Guests />
        <SearchBarButton>검색</SearchBarButton>
      </SearchBarLayout>
    </>
  );
};

const SearchBarButton = styled.button`
  position: absolute;
  right: 0;
  top: 20%;
  padding: 8px 16px 8px 8px;
  /* width: 90px; */
  height: 42px;

  background: #e84c60;
  color: white;
  font-weight: bold;
  font-size: 1.2rem;
  border: none;
  border-radius: 30px;
  flex: none;
  margin: 0px 24px;
`;

const SearchBarLayout = styled.div`
  position: relative;
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
