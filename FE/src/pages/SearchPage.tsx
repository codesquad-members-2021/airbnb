import styled from 'styled-components';
import { Link } from '../util/MyRouter';
import { ResponsiveFluid } from '../components/Common/ResponsiveFluid';

import Map from '../components/Map/Map';
import RoomCard from '../components/Room/RoomCard';

function SearchPage() {
  return (
    <SearchPageLayout>
      
      {/* <Link to={'/'}> main test </Link> for test */}
      <SearchPageCardsSection>
        <h1>지도에서 선택한 지역의 숙소</h1>
        <RoomCard />
        <RoomCard />
        <RoomCard />
        <RoomCard />
        <RoomCard />
      </SearchPageCardsSection>
      <Map />
      {/* for test */}

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