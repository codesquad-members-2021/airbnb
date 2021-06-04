import { Suspense } from 'react';
import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { roomsState } from '../../recoilStore/reserveRoomAtom';
import ReserveRoom from './ReserveRoom';
import ReserveRoomList from './ReserveRoomList';
import { roomType } from './roomType';

interface Props {
  className?: string;
}

const ReserveRoomsSection = ({ className }: Props) => {
  // const reserveRoomList = roomsData && roomsData.map((roomData, idx) => <ReserveSkeleton />);
  return (
    <StyledReserveRoomsSection className={className}>
      <div className='data__info'>
        300개 이상의 숙소 · 5월 12일 - 5월 18일 · ￦100,000 ~ ￦1,000,000 · 게스트 3명
      </div>
      <div className='title'>지도에서 선택한 지역의 숙소</div>
      {/* <div className='room__list'>{reserveRoomList}</div> */}
      <Suspense fallback='loading...'>
        <ReserveRoomList />
      </Suspense>
    </StyledReserveRoomsSection>
  );
};

export default ReserveRoomsSection;

const StyledReserveRoomsSection = styled.div`
  height: 100%;
  flex: 1;
  padding: 24px 40px 24px 24px;
  .data__info {
    font-size: ${({ theme }) => theme.fontSize.small};
    margin-bottom: 8px;
  }
  .title {
    font-weight: 700;
    font-size: ${({ theme }) => theme.fontSize.largest};
  }
`;
