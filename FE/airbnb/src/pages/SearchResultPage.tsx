import styled from "styled-components";
import { useSetRecoilState } from "recoil";
import { latitudeState, longitudeState } from "state/atoms/positionAtoms";
import SearchPageHeader from "component/header/SearchPageHeader";
import AccommodationList from "component/searchResult/AccommodationList";
import Map from "component/searchResult/Map";

const SearchResultPage = () => {
  const setLatitude = useSetRecoilState(latitudeState);
  const setLongitude = useSetRecoilState(longitudeState);

  // 사용자의 현재 위치를 상태에 저장
  const getCurrPosition = () => {
    navigator.geolocation.getCurrentPosition((pos) => {
      setLatitude(pos.coords.latitude);
      setLongitude(pos.coords.longitude);
    });
  };
  getCurrPosition();

  return (
    <PageContainer>
      <SearchPageHeader />
      <SearchPageContent>
        <AccommodationList />
        <Map />
      </SearchPageContent>
    </PageContainer>
  );
};

export default SearchResultPage;

const PageContainer = styled.div`
  display: flex;
  flex-direction: column;
  align-items: center;
  position: relative;
`;

const SearchPageContent = styled.div`
  width: 1440px;
  display: flex;
  position: absolute;
  top: 80px;
`;
