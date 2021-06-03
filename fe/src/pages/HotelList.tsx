import useAxios from "hooks/useAxios";
import Header from "components/main/header/Header";
import SearchBar from "components/main/searchbar/Searchbar";
import HotelListContent from "components/hotel-list/HotelListContent";
import { useRecoilValue, useSetRecoilState } from "recoil";
import {
  isHotelPage,
  locationData,
  searchParamsSelector,
} from "atoms/searchbarAtom";

import styled from "styled-components";
import { GoogleMap } from "@react-google-maps/api";
const HotelList = () => {
  const searchParams = useRecoilValue(searchParamsSelector);
  const setIsHotelList = useSetRecoilState(isHotelPage);
  setIsHotelList(true);
  const { latitude, longitude } = useRecoilValue(locationData);
  const { data, isLoading } = useAxios(
    process.env.REACT_APP_API_URL + "/hotels?" + searchParams,
    "GET"
  );
  const center = { lat: latitude, lng: longitude };
  const mapStyle = { width: "100%", height: "100%" };
  return (
    <>
      <TopSection>
        <Header />
        <SearchBar />
      </TopSection>
      <ButtomSection>
        {isLoading ? null : <HotelListContent hotelListData={data} />}
        <GoogleMap mapContainerStyle={mapStyle} center={center} zoom={15} />
      </ButtomSection>
    </>
  );
};

export default HotelList;

const TopSection = styled.section`
  background-color: white;
  z-index: 99999;
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
  padding-top: 9rem;
  height: 100vh;
`;
