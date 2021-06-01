import styled from 'styled-components';
import HotelListHeader from './HotelListHeader';
import HotelItem from './HotelItem';

const HotelList = () => {
  return (
    <HotelListWrapper>
      <HotelListHeader></HotelListHeader>
      {Array.from({length: 4}, (_,idx) => {
        return (<HotelItem key={`hotelItem-${idx}`}/>)
      })}
    </HotelListWrapper>
  )
}

const HotelListWrapper = styled.div`
  position:relative;
  width: 50%;
  min-width: 30rem;
  padding: 2rem 1.5rem 0;
  height: 100%;
  top:6.4rem;
`;

export default HotelList;
