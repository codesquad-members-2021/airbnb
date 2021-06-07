import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { selectDateState } from '../../../recoilStore/calendarAtom';
import { guestState } from '../../../recoilStore/headerAtom';
import { getDateByTime } from '../../../util/calendarUtils';

interface Props {
  className?: string;
}

const ReserveFormInfo = ({ className }: Props) => {
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
    <StyledReserveFormInfo className={className}>
      <div className='reserve-form__column'>
        <div className='reserve-form__date reserve-form__item'>
          <div className='reserve-form__title'>체크인</div>
          <div className='reserve-form__info'>{checkInDate}</div>
        </div>
        <div className='reserve-form__date reserve-form__item'>
          <div className='reserve-form__title'>체크아웃</div>
          <div className='reserve-form__info'>{checkOutDate}</div>
        </div>
      </div>
      <div className='reserve-form__column'>
        <div className='reserve-form__item'>
          <div className='reserve-form__title'>인원</div>
          <div className='reserve-form__info'>게스트 {totalGuest}명</div>
        </div>
      </div>
    </StyledReserveFormInfo>
  );
};

export default ReserveFormInfo;

const StyledReserveFormInfo = styled.div`
  border-radius: 10px;
  .reserve-form__column {
    display: flex;
    align-items: center;
  }
  .reserve-form__item {
    padding: 8px;
    .reserve-form__title {
      font-size: ${({ theme }) => theme.fontSize.small};
      font-weight: 700;
    }
    .reserve-form__info {
      color: ${({ theme }) => theme.colors.gray2};
    }
  }
  border: ${({ theme }) => `1px solid ${theme.colors.gray4}`};
  .reserve-form__column:first-child {
  }
  .reserve-form__date {
    flex: 1;
  }
  .reserve-form__date:first-child {
    border-right: ${({ theme }) => `1px solid ${theme.colors.gray4}`};
  }
  .reserve-form__column:last-child {
    border-top: ${({ theme }) => `1px solid ${theme.colors.gray4}`};
  }
`;
