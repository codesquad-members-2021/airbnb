import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { selectDateState } from '../../../recoil/calendarAtom';
import { guestState } from '../../../recoil/headerAtom';
import { getDateByTime } from '../../header/form/calendar/calendarDateFn';

interface Props {}

const ReserveFormInfo = (props: Props) => {
  const selectDate = useRecoilValue(selectDateState);
  const guestDate = useRecoilValue(guestState);

  const timeToReserveFormdate = (time: number | null): string => {
    const date = getDateByTime(time);
    if (!date) return '';
    return `${date.year}. ${date.month}. ${date.day}.`;
  };

  const checkInDate = timeToReserveFormdate(selectDate.checkIn);
  const checkOutDate = timeToReserveFormdate(selectDate.checkOut);
  const totalGuest = Object.values(guestDate).reduce((acc, cur) => acc + cur);

  return (
    <StyledReserveFormInfo>
      <div className='reserve-form__column'>
        <div className='reserve-form__date'>
          <div className='reserve-form__title'>체크인</div>
          <div className='reserve-form__info'>{checkInDate}</div>
        </div>
        <div className='reserve-form__date'>
          <div className='reserve-form__title'>체크아웃</div>
          <div className='reserve-form__info'>{checkOutDate}</div>
        </div>
      </div>
      <div className='reserve-form__column'>
        <div className='reserve-form__title'>인원</div>
        <div className='reserve-form__info'>게스트 {totalGuest}명</div>
      </div>
    </StyledReserveFormInfo>
  );
};

export default ReserveFormInfo;

const StyledReserveFormInfo = styled.div`
  .reserve-form__date,
  .reserve-form__column {
    padding: 1rem;
  }
  .reserve-form__column:first-child {
    display: flex;
  }
`;
