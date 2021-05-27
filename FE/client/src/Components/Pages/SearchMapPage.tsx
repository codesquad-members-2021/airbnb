import styled from 'styled-components';
import GNB from '@Components/GNB';
import HotelList from '@Components/HotelList/index';
import SearchMap from '@Components/SearchMap/index';

const SearchMapPage = () => {
  return (
    <>
      <GNB isMain={false} />
      <SearchMapPageWrapper>
        <HotelList />
        <SearchMap />
      </SearchMapPageWrapper>
    </>
  )
}

const SearchMapPageWrapper = styled.div`
  display: flex;
`;
export default SearchMapPage;
