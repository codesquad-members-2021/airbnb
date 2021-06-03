import { Suspense, useEffect } from 'react';
import { useRecoilState } from 'recoil';
import styled from 'styled-components';
import Map from '../components/map/Map';
import ReserveHeader from '../components/reserveHeader/ReserveHeader';
import MapSkeleton from '../components/reservePageSkeleton/MapSkeleton';
import ReserveRoomList from '../components/reserveRoomList/ReserveRoomList';
import { reserveInfoSelector } from '../recoilStore/headerAtom';

interface Props {}

const ReservePage = ({}: Props) => {
  const [reserveInfo, setReserveInfo] = useRecoilState(reserveInfoSelector);
  useEffect(() => {
    const [encodedAddress, checkIn, checkOut, minCharge, maxCharge, adult, child, infants] =
      getQueryValue(window.location.search);
    const address = decodeURI(encodedAddress);
    const newReserveInfo = {
      address,
      checkIn: +checkIn,
      checkOut: +checkOut,
      minCharge: +minCharge,
      maxCharge: +maxCharge,
      adult: +adult,
      child: +child,
      infants: +infants,
    };
    setReserveInfo(newReserveInfo);
  }, []);

  const getQueryValue = (query: string): string[] => query.split('&').map((v) => v.split('=')[1]);

  return (
    <StyledReservePage>
      <ReserveHeader />
      <Suspense fallback=''>
        <ReserveRoomList className='rooms' />
      </Suspense>
      <Suspense fallback={<MapSkeleton />}>
        <Map className='map' />
      </Suspense>
    </StyledReservePage>
  );
};

export default ReservePage;

const StyledReservePage = styled.div`
  z-index: -1;
  height: 100%;
  .rooms {
    position: absolute;
    width: 50%;
    height: 100%;
    top: 104px;
    left: 0;
  }
  .map {
    position: fixed;
    top: 94px;
    right: 0;
    width: 50%;
    height: 100%;
  }
`;
