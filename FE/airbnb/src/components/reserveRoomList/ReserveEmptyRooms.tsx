import styled from 'styled-components';

interface Props {}

const ReserveEmptyRooms = (props: Props) => {
  return <StyledReserveEmptyRooms>찾으시는 조건에 맞는 숙소가 없습니다😥</StyledReserveEmptyRooms>;
};

export default ReserveEmptyRooms;

const StyledReserveEmptyRooms = styled.div`
  padding-top: 3rem;
  font-weight: 700;
`;
