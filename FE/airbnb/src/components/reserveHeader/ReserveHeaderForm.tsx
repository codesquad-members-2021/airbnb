import { useRef } from 'react';
import { useRecoilValue } from 'recoil';
import styled from 'styled-components';
import { reserveInfoSelector } from '../../recoilStore/headerAtom';
import FormCheckIn from '../header/form/FormCheckIn';
import FormCheckOut from '../header/form/FormCheckOut';
import FormGuest from '../header/form/FormGuest';
import FormPrice from '../header/form/FormPrice';

interface Props {}

const ReserveHeaderForm = (props: Props) => {
  const checkOutRef = useRef<HTMLDivElement>(null);
  const reserveInfo = useRecoilValue(reserveInfoSelector);
  return (
    <StyledReserveHeaderForm>
      <FormCheckIn checkOutRef={checkOutRef} />
      <FormCheckOut checkOutRef={checkOutRef} />
      <FormPrice />
      <FormGuest />
    </StyledReserveHeaderForm>
  );
};

export default ReserveHeaderForm;

const StyledReserveHeaderForm = styled.div`
  display: flex;
  height: 3rem;
  border: ${({ theme }) => `1px solid ${theme.colors.gray4}`};
  border-radius: 60px;
  background-color: ${({ theme }) => theme.colors.white};
`;
