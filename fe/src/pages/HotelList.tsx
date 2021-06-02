import useAxios from "hooks/useAxios";
import Header from "components/main/header/Header";
import SearchBar from "components/main/searchbar/Searchbar";
import HotelListContent from "components/hotel-list/HotelListContent";
import HotelListItem from "components/hotel-list/HotelListItem";
import styled from "styled-components";
const HotelList = () => {
  const mokupURL =
    "checkin=2021-06-01&checkout=2021-06-14&pricemax=150000&pricemin=100000&adults=2&children=1&infants=1&latitude=37.498063&longitude=127.030187";
  const { data, isLoading, isSuccess } = useAxios(
    process.env.REACT_APP_API_URL + "/hotels/?" + mokupURL,
    "GET"
  );
  console.log(isLoading, isSuccess, data);
  return (
    <>
      <TopSection>
        <Header />
        <SearchBar />
      </TopSection>
      <ButtomSection>
        {isLoading ? null : <HotelListContent hotelListData={data} /> }
      </ButtomSection>
    </>
  );
};

export default HotelList;

const TopSection = styled.section`
  position: fixed;
  top: 0;
  width: 100%;
  display: flex;
  flex-direction: column;
  padding: 3rem 0;
  box-shadow: 0px 16px 32px rgba(0, 0, 0, 0.15), 0px 3px 8px rgba(0, 0, 0, 0.1);
`;
const ButtomSection = styled.section`
  display: flex;
  padding-top: 8rem;
  height: 100vh;
`;
