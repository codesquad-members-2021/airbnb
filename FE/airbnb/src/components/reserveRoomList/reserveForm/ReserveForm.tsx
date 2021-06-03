import { RefObject } from 'react';
import styled from 'styled-components';
import { roomType } from '../roomType';
import ReserveBtn from './ReserveBtn';
import ReserveFormHeader from './ReserveFormHeader';
import ReserveFormInfo from './ReserveFormInfo';
import ReserveFromPrice from './ReserveFromPrice';
import { createPortal } from 'react-dom';
import { useRecoilValue } from 'recoil';
import { reserveRoomSelector } from '../../../recoilStore/reserveRoomAtom';
import { selectDateState } from '../../../recoilStore/calendarAtom';
import { getBetweenDays } from '../../../util/calendarUtils';

interface Props {
  toggleRef: RefObject<HTMLDivElement>;
  roomData: roomType;
}

const ReserveForm = ({ toggleRef, roomData }: Props) => {
  const { id, chargePerNight } = roomData;
  const portalElement: HTMLDivElement | null = document.querySelector('#modal');
  const selectDate = useRecoilValue(selectDateState);

  const getCleanCharge = (totalPrice: number): number => Math.floor(totalPrice * 0.03);
  const getServiceCharge = (totalPrice: number): number => Math.floor(totalPrice * 0.15);
  const getTaxCharge = (totalPrice: number): number => Math.floor(totalPrice * 0.01);

  const betweenDays = getBetweenDays(selectDate.checkIn, selectDate.checkOut);
  const totalPrice = chargePerNight * betweenDays;
  const cleanCharge = getCleanCharge(totalPrice);
  const serviceCharge = getServiceCharge(totalPrice);
  const taxCharge = getTaxCharge(totalPrice);
  const totalCharge = totalPrice + cleanCharge + serviceCharge + taxCharge;

  const reserveResult = useRecoilValue(reserveRoomSelector({ id, charge: totalCharge }));
  console.log(reserveResult);
  return (
    portalElement &&
    createPortal(
      <StyledReserveFormWrapper>
        <StyledReserveForm ref={toggleRef}>
          <ReserveFormHeader
            className='reserve__header'
            chargePerNight={chargePerNight}
            review={127}
          />
          <ReserveFormInfo className='reserve__info' />
          <ReserveBtn className='reserve__btn' />
          <div className='reserve__warn'>예약 확정 전에는 요금이 청구되지 않습니다.</div>
          <ReserveFromPrice
            {...{ chargePerNight, totalPrice, cleanCharge, serviceCharge, taxCharge, totalCharge }}
          />
        </StyledReserveForm>
      </StyledReserveFormWrapper>,
      portalElement
    )
  );
};

export default ReserveForm;

const StyledReserveFormWrapper = styled.div`
  z-index: 10;
  position: fixed;
  top: 0;
  width: 100%;
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  background-color: rgba(0, 0, 0, 0.3);
`;

const StyledReserveForm = styled.div`
  padding: 36px 24px;
  width: 400px;
  height: 525px;
  background-color: ${({ theme }) => theme.colors.white};
  border-radius: 10px;
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  .reserve__header {
    margin-bottom: 1.5rem;
  }
  .reserve__info,
  .reserve__btn,
  .reserve__warn {
    margin-bottom: 1rem;
  }
  .reserve__warn {
    text-align: center;
    font-size: ${({ theme }) => theme.fontSize.small};
    color: ${({ theme }) => theme.colors.gray3};
  }
`;
