import { Suspense } from 'react';
import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import {
  reserveInfoSelector,
  reserveQueryType,
  totalGuestSelector,
} from '../../recoilStore/headerAtom';
import { getDateByTime } from '../../util/calendarUtils';
import ReserveRoomList from './ReserveRoomList';

interface Props {
  className?: string;
}

const ReserveRoomsSection = ({ className }: Props) => {
  const { checkIn, checkOut, minCharge, maxCharge } = useRecoilValue(reserveInfoSelector);
  const checkInDate = getDateByTime(checkIn);
  const checkOutDate = getDateByTime(checkOut);

  const totalGuest = useRecoilValue(totalGuestSelector);
  const dataInfo = `300개 이상의 숙소 · ${checkInDate?.month}월 ${checkInDate?.day}일 - ${
    checkOutDate?.month
  }월${
    checkOutDate?.day
  }일 · ￦${minCharge.toLocaleString()} ~ ￦${maxCharge.toLocaleString()} · 게스트 ${totalGuest}명`;
  return (
    <StyledReserveRoomsSection className={className}>
      <div className='data__info'>{dataInfo}</div>
      <div className='title'>지도에서 선택한 지역의 숙소</div>
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
