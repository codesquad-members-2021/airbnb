import styled from 'styled-components';
import GNB from '../GNB';
import HotelList from './../HotelList/index';
import SearchMap from './../SearchMap/index';

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
