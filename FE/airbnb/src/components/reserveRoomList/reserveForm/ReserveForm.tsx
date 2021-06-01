import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { selectDateState } from '../../../recoil/calendarAtom';
import { getBetweenDays } from '../../header/form/calendar/calendarDateFn';
import { roomType } from '../roomType';
import ReserveFormHeader from './ReserveFormHeader';
import ReserveFormInfo from './ReserveFormInfo';
interface Props {
  roomData: roomType;
}

const ReserveForm = ({ roomData }: Props) => {
  const selectDate = useRecoilValue(selectDateState);
  const { chargePerNight } = roomData;

  const getCleanCharge = (totalPrice: number): number => Math.floor(totalPrice * 0.03);
  const getServiceCharge = (totalPrice: number): number => Math.floor(totalPrice * 0.15);
  const getTaxCharge = (totalPrice: number): number => Math.floor(totalPrice * 0.01);

  const betweenDays = getBetweenDays(selectDate.checkIn, selectDate.checkOut);
  const totalPrice = chargePerNight * betweenDays;

  const cleanCharge = getCleanCharge(totalPrice);
  const serviceCharge = getServiceCharge(totalPrice);
  const taxCharge = getTaxCharge(totalPrice);

  return (
    <StyledReserveFormWrapper>
      <StyledReserveForm>
        <ReserveFormHeader className='header' chargePerNight={chargePerNight} review={127} />
        <ReserveFormInfo />
      </StyledReserveForm>
    </StyledReserveFormWrapper>
  );
};

export default ReserveForm;

const StyledReserveFormWrapper = styled.div`
  z-index: 10;
  position: absolute;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.3);
`;

const StyledReserveForm = styled.div`
  padding: 24px;
  width: 400px;
  height: 500px;
  background-color: ${({ theme }) => theme.colors.white};
  border-radius: 10px;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
`;
