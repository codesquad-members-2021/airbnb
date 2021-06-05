import { useState, useEffect } from 'react';
import styled from 'styled-components';

import { Link } from '../util/MyRouter';
import { ResponsiveFluid } from '../components/Common/ResponsiveFluid';

import Map from '../components/Map/Map';
import RoomCard from '../components/Room/RoomCard';

import useFetch from '../util/hooks/useFetch';
import API from '../util/API';

import { IRoomsInfo, IRoomInfo } from '../util/types/Room';
interface IChangeProps {
  type: string, 
  payload: any
}

const SearchPage = () => {
  // const RoomsData = useFetch<IRoomsInfo>(API.get.rooms);
  let targetURL = `${API.get.rooms}`;
  if (window.location.search) {
    targetURL = `${API.get.rooms}${window.location.search}`; 
  }

  const RoomsData = useFetch<IRoomsInfo>(targetURL);
  const [$Map, set$Map] = useState<any>(null);
  
  useEffect(() => {  
    // console.log("SearchPage", RoomsData.result?.rooms);
  });

  const handeChangePosition = ({type, payload}:IChangeProps) => {
    console.log(payload.id);
    switch (type) {
      case "map":
        for (const room of RoomsData.result.rooms) {
          if (room.id === payload.id) {
            payload.map.setCenter({
              lat: room.latitude,
              lng: room.longitude
            });
            break;
          }
        }
        break;
      case "room":
        for (const room of RoomsData.result.rooms) {
          if (room.id === payload.id) {
            $Map.setCenter({
              lat: room.latitude,
              lng: room.longitude
            });
            break;
          }
        }
        break;
      default:
        break;
    }
  }
  const handleChangeMapPositionToCenter = (id) => {
    console.log("handleChangeMapPositionToCenter", id)
  }
  const handleChangeCardPositionToTop = (id) => {
    console.log("handleChangeCardPositionToTop", id)
  }

  if (RoomsData.fetchState.isLoading) return <> 로딩중 </>;
  return (
    <SearchPageLayout>
      
      {/* <Link to={'/'}> main test </Link> for test */}
      <SearchPageCardsSection>
        <h1>지도에서 선택한 지역의 숙소</h1>
        {RoomsData.result?.rooms.map((room: IRoomInfo, i:number) => {
          return (<RoomCard room={room} handeChangePosition={handeChangePosition} key={`room-${i}`}/>);
        })}
        
      </SearchPageCardsSection>
      <Map rooms={RoomsData.result?.rooms} handeChangePosition={handeChangePosition} handleSetMap={set$Map} />

    </SearchPageLayout>
  );
}

const SearchPageLayout = styled(ResponsiveFluid)`
  margin: auto;
`;

const SearchPageCardsSection = styled.section`
  width: 100%;
  height: 100vh;
  padding: 0 24px;
  box-sizing: border-box;
  overflow: scroll;
  
  &::-webkit-scrollbar {
    display: none;
  }

  display:flex;
  flex-direction: column;

`

export default SearchPage;