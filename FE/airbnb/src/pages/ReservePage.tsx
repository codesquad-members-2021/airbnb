import styled from 'styled-components';
import Map from '../components/map/Map';
import ReserveHeader from '../components/reserveHeader/ReserveHeader';

interface Props {}

const ReservePage = ({}: Props) => {
  return (
    <StyledReservePage>
      <ReserveHeader />
      <div className='reservePage'>
        <Map />
      </div>
    </StyledReservePage>
  );
};

export default ReservePage;

const StyledReservePage = styled.div`
  .map {
    width: 500px;
    height: 400px;
  }
  .reservePage {
    margin-top: 94px;
  }
`;
