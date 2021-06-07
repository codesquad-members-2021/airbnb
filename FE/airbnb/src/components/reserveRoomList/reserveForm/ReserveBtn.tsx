import { useSetRecoilState } from 'recoil';
import styled from 'styled-components';
import { triggerReserve } from '../../../recoilStore/reserveRoomAtom';

interface Props {
  className: string;
}

const ReserveBtn = ({ className }: Props) => {
  const setTriggerReserve = useSetRecoilState(triggerReserve);

  const submitReserveForm = () => {
    setTriggerReserve(true);
  };

  return (
    <StyledReserveBtn onClick={submitReserveForm} className={className}>
      예약하기
    </StyledReserveBtn>
  );
};

export default ReserveBtn;

const StyledReserveBtn = styled.button`
  display: flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  height: 55px;
  border: none;
  border-radius: 10px;
  background-color: ${({ theme }) => theme.colors.black};
  color: ${({ theme }) => theme.colors.white};
  font-weight: 700;
  cursor: pointer;
`;
