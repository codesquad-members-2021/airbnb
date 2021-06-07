import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { selectDateState } from '../../../recoilStore/calendarAtom';
import { getBetweenDays } from '../../../util/calendarUtils';

interface Props {
  chargePerNight: number;
  totalPrice: number;
  cleanCharge: number;
  serviceCharge: number;
  taxCharge: number;
  totalCharge: number;
}

const ReserveFromPrice = ({
  chargePerNight,
  totalPrice,
  cleanCharge,
  serviceCharge,
  taxCharge,
  totalCharge,
}: Props) => {
  const selectDate = useRecoilValue(selectDateState);

  const betweenDays = getBetweenDays(selectDate.checkIn, selectDate.checkOut);

  return (
    <StyledReservePriceWrapper>
      <StyledReserveFormPrice>
        <div className='reserve-price__column'>
          <div className='reserve-price__title'>
            ￦{chargePerNight.toLocaleString()} x {betweenDays}박
          </div>
          <div className='reserve-price__price'>￦{totalPrice.toLocaleString()}</div>
        </div>
        <div className='reserve-price__column'>
          <div className='reserve-price__title'>청소비</div>
          <div className='reserve-price__price'>￦{cleanCharge.toLocaleString()}</div>
        </div>
        <div className='reserve-price__column'>
          <div className='reserve-price__title'>서비스 수수료</div>
          <div className='reserve-price__price'>￦{serviceCharge.toLocaleString()}</div>
        </div>
        <div className='reserve-price__column'>
          <div className='reserve-price__title'>숙박세와 수수료</div>
          <div className='reserve-price__price'>￦{taxCharge.toLocaleString()}</div>
        </div>
      </StyledReserveFormPrice>
      <StyledReserveCharge>
        <div className='reserve-price__column'>
          <div className='reserve-price__title'>총 합계</div>
          <div className='reserve-price__price'>￦{totalCharge.toLocaleString()}</div>
        </div>
      </StyledReserveCharge>
    </StyledReservePriceWrapper>
  );
};

export default ReserveFromPrice;

const StyledReservePriceWrapper = styled.div`
  .reserve-price__column {
    display: flex;
    justify-content: space-between;
    margin-bottom: 8px;
  }
  .reserve-price__title {
    text-decoration: underline;
  }
`;

const StyledReserveFormPrice = styled.div`
  padding-bottom: 1rem;
  border-bottom: ${({ theme }) => `2px solid ${theme.colors.gray5}`};
  margin-bottom: 1rem;
`;

const StyledReserveCharge = styled.div`
  font-weight: 700;
  .reserve-price__column {
    display: flex;
    justify-content: space-between;
    margin-bottom: 8px;
  }
  .reserve-price__title {
    text-decoration: underline;
  }
`;
