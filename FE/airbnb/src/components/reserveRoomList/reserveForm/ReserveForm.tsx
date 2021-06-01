import styled from 'styled-components';
import { roomType } from '../roomType';
interface Props {
  roomData: roomType;
}

const ReserveForm = ({ roomData }: Props) => {
  return (
    <StyledReserveFormWrapper>
      <StyledReserveForm>123</StyledReserveForm>;
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
  width: 400px;
  height: 500px;
  background-color: green;
`;
