import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { selectDateState } from '../../recoilStore/calendarAtom';
import { getBetweenDays } from '../../util/calendarUtils';
import { getNumberWithComma } from '../../util/tsUtils';
import { roomType } from './roomType';
interface Props {
  roomData: roomType;
}

const ReserveRoomPrice = ({ roomData }: Props) => {
  const selectDate = useRecoilValue(selectDateState);
  const { chargePerNight, totalCharge } = roomData;
  const pricePerDay = `￦${getNumberWithComma(chargePerNight)} `;
  const betweenDays = getBetweenDays(selectDate.checkIn, selectDate.checkOut);
  const totalPrice = `총액 ￦${getNumberWithComma(chargePerNight * betweenDays)}`;
  return (
    <StyledReserveRoomPrice>
      <div className='room__day-price'>
        <span className='price'>{pricePerDay} </span>
        <span>/ 박</span>
      </div>
      <div className='room__total-price'>{totalPrice}</div>
    </StyledReserveRoomPrice>
  );
};

export default ReserveRoomPrice;

const StyledReserveRoomPrice = styled.div`
  text-align: end;
  .room__day-price {
    margin-bottom: 5px;
    span {
      font-size: ${({ theme }) => theme.fontSize.large};
    }
    .price {
      font-weight: bold;
    }
  }
  .room__total-price {
    text-decoration: underline;
    color: ${({ theme }) => theme.colors.gray3};
  }
`;
