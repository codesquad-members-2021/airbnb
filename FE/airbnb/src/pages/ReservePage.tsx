import { useEffect } from 'react';
import { useRecoilValue, useSetRecoilState } from 'recoil';
import styled from 'styled-components';
import Map from '../components/map/Map';
import ReserveHeader from '../components/reserveHeader/ReserveHeader';
import ReserveRoomList from '../components/reserveRoomList/ReserveRoomList';
import { reserveInfoSelector } from '../recoil/headerAtom';

interface Props {}

const ReservePage = ({}: Props) => {
  const setReserveInfoSelector = useSetRecoilState(reserveInfoSelector);
  useEffect(() => {
    const [encodedAddress, checkIn, checkOut, minCharge, maxCharge, adult, child, infants] =
      window.location.search.split('&').map((v) => v.split('=')[1]);
    const address = decodeURI(encodedAddress);
    const reserveInfoSelector = {
      address,
      checkIn: +checkIn,
      checkOut: +checkOut,
      minCharge: +minCharge,
      maxCharge: +maxCharge,
      adult: +adult,
      child: +child,
      infants: +infants,
    };
    setReserveInfoSelector(reserveInfoSelector);
  }, []);
  return (
    <StyledReservePage>
      <ReserveHeader />
      <ReserveRoomList className='rooms' />
      <Map className='map' />
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
