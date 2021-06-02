import styled from 'styled-components';
import { roomType } from '../roomType';
import ReserveBtn from './ReserveBtn';
import ReserveFormHeader from './ReserveFormHeader';
import ReserveFormInfo from './ReserveFormInfo';
import ReserveFromPrice from './ReserveFromPrice';
interface Props {
  roomData: roomType;
}

const ReserveForm = ({ roomData }: Props) => {
  const { chargePerNight } = roomData;

  return (
    <StyledReserveFormWrapper>
      <StyledReserveForm>
        <ReserveFormHeader
          className='reserve__header'
          chargePerNight={chargePerNight}
          review={127}
        />
        <ReserveFormInfo className='reserve__info' />
        <ReserveBtn className='reserve__btn' />
        <div className='reserve__warn'>예약 확정 전에는 요금이 청구되지 않습니다.</div>
        <ReserveFromPrice chargePerNight={chargePerNight} />
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
