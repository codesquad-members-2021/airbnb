import styled from 'styled-components';
import { getNumberWithComma } from '../util/util';
import { roomType } from './roomType';
interface Props {
  roomData: roomType;
}

const ReserveRoomPrice = ({ roomData }: Props) => {
  const { chargePerNight, totalCharge } = roomData;
  const pricePerDay = `￦${getNumberWithComma(chargePerNight)} `;
  const totalPrice = `총액 ￦${getNumberWithComma(totalCharge)}`;
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
