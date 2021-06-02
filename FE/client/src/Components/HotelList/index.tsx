import styled from 'styled-components';
import HotelListHeader from './HotelListHeader';
import HotelItem from './HotelItem';
import { useRecoilValueLoadable } from 'recoil';
import { fetchHotelListSelector } from '@/recoil/fetchAtoms';
import { HotelListType } from '@Components/commons/baseType';

const HotelList = () => {
  const hotelListLoadable = useRecoilValueLoadable(fetchHotelListSelector);

  return (
    <HotelListWrapper>
      <HotelListHeader />
      {hotelListLoadable.state === 'hasValue' &&
        hotelListLoadable.contents.map((hotelInfo: HotelListType) => {
          return (<HotelItem key={`hotelItem-${hotelInfo.id}`} {...{hotelInfo}}/>)
        })}

      {hotelListLoadable.state === 'loading' && <></>}

      {hotelListLoadable.state === 'hasError' && <>error...</>}
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
