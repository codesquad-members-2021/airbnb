import styled from 'styled-components';
import HeadCount from "@components/headcount/HeadCount"
import { GuestType } from './HeadCountTypes';

function HeadCountModal() {
  const guestTypes: GuestType[] = ['adults', 'children', 'infants'];

  return (
    <HeadCountModalContainer>
      {guestTypes.map((guestType, i) => <HeadCount guestType={guestType} key={i}/>)}
    </HeadCountModalContainer>
  );
}

const HeadCountModalContainer = styled.ul`
  display: flex;
  flex-direction: column;
  gap: 42px;
  width: 400px;
  height: fit-content;
  border-radius: ${({ theme }) => theme.borders.L};
  box-shadow: ${({ theme }) => theme.boxShadow.up2};
  padding: 64px;
  margin-top: 16px;
  position: absolute;
  right: 0;
`

export default HeadCountModal;
