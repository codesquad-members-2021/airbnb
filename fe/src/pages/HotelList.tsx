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
import { GoogleMap, OverlayView } from "@react-google-maps/api";
import { useEffect } from "react";

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
  const { latitude, longitude } = useRecoilValue(locationData);
  const { data, isLoading } = useAxios(
    process.env.REACT_APP_API_URL + "/hotels?" + searchParams,
    "GET"
  );
  const center = { lat: latitude, lng: longitude };
  const mapStyle = { width: "100%", height: "100%" };
  const getPixelPositionOffset = (width: number, height: number) => ({
    x: -(width / 2),
    y: -(height / 2),
  });
  useEffect(() => {
    setIsHotelList(true);
  }, []);
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
                <OverlayView
                  key={props.hotelId}
                  position={{ lat: props.latitude, lng: props.longitude }}
                  mapPaneName={OverlayView.OVERLAY_MOUSE_TARGET}
                  getPixelPositionOffset={getPixelPositionOffset}
                >
                  <MapMarker>₩ {props.price}</MapMarker>
                </OverlayView>
              ))
            : null}
        </GoogleMap>
      </ButtomSection>
    </>
  );
};

export default HotelList;
const MapMarker = styled.div`
  padding: 0.3rem 0.5rem;
  background: white;
  border: 1px solid #ccc;
  font-size: 1.2rem;
  font-weight: 700;
  border-radius: 2rem;
  cursor: pointer;
  &:hover {
    background: ${({ theme }) => theme.color.Gray4};
  }
`;
const TopSection = styled.section`
  background-color: white;
  z-index: 99;
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
