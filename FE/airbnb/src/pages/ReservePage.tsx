import { useEffect } from 'react';
import { useRecoilValue, useRecoilState } from 'recoil';
import styled from 'styled-components';
import Map from '../components/map/Map';
import ReserveHeader from '../components/reserveHeader/ReserveHeader';
import ReserveRoomList from '../components/reserveRoomList/ReserveRoomList';
import { reserveInfoSelector } from '../recoil/headerAtom';
import { getRoomsSelector } from '../recoil/reserveRoomAtom';

interface Props {}

const ReservePage = ({}: Props) => {
  const [reserveInfo, setReserveInfo] = useRecoilState(reserveInfoSelector);
  const roomsData = useRecoilValue(getRoomsSelector);
  console.log(roomsData);
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

  useEffect(() => {
    console.log('roomsData', reserveInfo);
  }, [reserveInfo]);
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
