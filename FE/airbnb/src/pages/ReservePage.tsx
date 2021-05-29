import styled from 'styled-components';
import Map from '../components/map/Map';

interface Props {}

const ReservePage = ({}: Props) => {
  return (
    <StyledReservePage>
      <Map />
    </StyledReservePage>
  );
};

export default ReservePage;

const StyledReservePage = styled.div`
  .map {
    width: 500px;
    height: 400px;
  }
`;
