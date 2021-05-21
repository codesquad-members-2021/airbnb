import styled from 'styled-components';
import HotelListHeader from './HotelListHeader';
import HotelItem from './HotelItem';

const HotelList = () => {
  return (
    <HotelListWrapper>
      <HotelListHeader></HotelListHeader>
      <HotelItem />
      <HotelItem />
      <HotelItem />
      <HotelItem />
    </HotelListWrapper>
  )
}

const HotelListWrapper = styled.div`
  width: 50%;
  min-width: 30rem;
  padding: 2rem 1.5rem 0;
  height: 100%;
`;

export default HotelList;
