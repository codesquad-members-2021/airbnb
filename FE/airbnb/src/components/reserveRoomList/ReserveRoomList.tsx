import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { roomsState } from '../../recoilStore/reserveRoomAtom';
import ReserveRoom from './ReserveRoom';

interface Props {}

const ReserveRoomList = (props: Props) => {
  const roomsData = useRecoilValue(roomsState);

  const reserveRoomList =
    roomsData &&
    roomsData.map((roomData, idx) => <ReserveRoom key={roomData.id + idx} roomData={roomData} />);
  return <StyledReserveRoomList>{reserveRoomList}</StyledReserveRoomList>;
};

export default ReserveRoomList;

const StyledReserveRoomList = styled.div`
  & > div:not(:last-child) {
    border-bottom: ${({ theme }) => `1px solid ${theme.colors.gray5}`};
  }
`;
