import { useEffect } from 'react';
import styled from 'styled-components';

import { Link } from '../util/MyRouter';
import { ResponsiveFluid } from '../components/Common/ResponsiveFluid';

import Map from '../components/Map/Map';
import RoomCard from '../components/Room/RoomCard';

import useFetch from '../util/hooks/useFetch';
import API from '../util/API';

import { IRoomsInfo, IRoomInfo } from '../util/types/Room';


const SearchPage = () => {
  const RoomsData = useFetch<IRoomsInfo>(API.get.rooms);
  
  useEffect(() => {  
    // console.log("SearchPage", RoomsData.result?.rooms);
  });

  if (RoomsData.fetchState.isLoading) return <> 로딩중 </>;
  return (
    <SearchPageLayout>
      
      {/* <Link to={'/'}> main test </Link> for test */}
      <SearchPageCardsSection>
        <h1>지도에서 선택한 지역의 숙소</h1>
        {RoomsData.result?.rooms.map((room: IRoomInfo, i:number) => {
          return (<RoomCard room={room} key={`room-${i}`}/>);
        })}
        
      </SearchPageCardsSection>
      <Map rooms={RoomsData.result?.rooms} />

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