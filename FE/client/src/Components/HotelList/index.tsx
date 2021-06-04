import { useState, useCallback } from 'react';
import styled from 'styled-components';
import HotelListHeader from './HotelListHeader';
import HotelItem from './HotelItem';
import { useRecoilValueLoadable } from 'recoil';
import { fetchHotelListSelector } from '@/recoil/fetchAtoms';
import { HotelListType } from '@Components/commons/baseType';
import ReservationModal from './ReservationModal/ReservationModal';

export type HotelReservationInfoType = {
  price: number;
  reviewCount: number;
  dayCount: number;
}

const HotelList = () => {
  const hotelListLoadable = useRecoilValueLoadable(fetchHotelListSelector);
  const [showReservationModalState, setShowReservationModalState] = useState(false);
  const [hotelInfoState, setHotelInfoState] = useState({ price: 0, reviewCount: 0, dayCount: 0 });

  const handleClickShowReservationModal = useCallback(({ price, reviewCount, dayCount }: HotelReservationInfoType) => () => {
    setShowReservationModalState(true);
    console.log(price, reviewCount)
    setHotelInfoState({ price, reviewCount, dayCount });
  }, []);

  return (
    <HotelListWrapper>
      <ReservationModal {...{ showReservationModalState, setShowReservationModalState, hotelInfoState }} />
      <HotelListHeader />
      {hotelListLoadable.state === 'hasValue' &&
        hotelListLoadable.contents.map((hotelInfo: HotelListType) => {
          return (<HotelItem key={`hotelItem-${hotelInfo.id}`}
            {...{ hotelInfo, handleClickShowReservationModal }} />)
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
