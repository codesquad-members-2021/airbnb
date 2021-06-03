import useAxios from "hooks/useAxios";
import Header from "components/main/header/Header";
import SearchBar from "components/main/searchbar/Searchbar";
import HotelListContent from "components/hotel-list/HotelListContent";
import { MdPlace } from "react-icons/md";
import { useRecoilValue, useSetRecoilState } from "recoil";
import {
  isHotelPage,
  locationData,
  searchParamsSelector,
} from "atoms/searchbarAtom";
import styled from "styled-components";
import { GoogleMap, Marker, InfoWindow } from "@react-google-maps/api";
type datatype = {
  hotelId: string;
  title: string;
  price: number;
  wishlist: boolean;
  latitude: number;
  longitude: number;
  rate: number;
  options: string[];
  img: string;
};
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
        <GoogleMap mapContainerStyle={mapStyle} center={center} zoom={15}>
          {data
            ? data.map((props: datatype) => (
                <Marker
                  key={props.hotelId}
                  position={{ lat: props.latitude, lng: props.longitude }}
                  icon={{
                    url: "logo",
                    scaledSize: new google.maps.Size(15, 25),
                  }}
                >
                  <InfoWindow>
                    <div>{props.price}</div>
                  </InfoWindow>
                </Marker>
              ))
            : null}
        </GoogleMap>
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
