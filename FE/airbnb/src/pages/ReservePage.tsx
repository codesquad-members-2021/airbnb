import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import Map from '../components/map/Map';
import ReserveHeader from '../components/reserveHeader/ReserveHeader';
import ReserveRoomList from '../components/reserveRoomList/ReserveRoomList';
import { getRoomsSelector } from '../recoil/reserveRoomAtom';

interface Props {}

const ReservePage = ({}: Props) => {
  // const data = useRecoilValue(getRoomsSelector);
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
