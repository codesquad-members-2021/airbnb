import styled from "styled-components";
import Calendar from "components/Calendar/Calendar";
import Guests from "components/Guests/Guests";
import RoomPrice from "components/RoomPrice/RoomPrice";

const SearchBar = () => {
  return (
    <>
    <SearchBarLayout>
      <SearchBarBox className="check-in">
        <SearchBarTitle>체크인</SearchBarTitle>
        <SearchBarText>날짜입력</SearchBarText>
      </SearchBarBox>
      <SearchBarBox className="check-out">
        <SearchBarTitle>체크아웃</SearchBarTitle>
        <SearchBarText>날짜입력</SearchBarText>
      </SearchBarBox>
    {/* <RoomPrice /> */}
    <Guests />
    <SearchBarButton>검색</SearchBarButton>
    <Calendar />
    </SearchBarLayout>
  </>
  );
};

const SearchBarTitle = styled.div`
  /* font-size: 1.2rem; */
  font-size: 12px;
  font-weight: bold;
  margin-bottom: 10%;
`;
const SearchBarText = styled.div`
  /* font-size: 1.6rem; */
  font-size: 16px;
`;

const SearchBarBox = styled.div`
  outline: blue 1px solid;
  /* padding: 5%; */
  width: 40%;
  text-align: center;
  border: 1px gray solid;
`;


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
