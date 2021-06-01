import { RefObject } from 'react';
import styled from 'styled-components';
import GuestColumn from './GuestColumn';

interface Props {
  toggleRef: RefObject<HTMLDivElement>;
}

const FormGuestToggle = ({ toggleRef }: Props) => {
  const GUEST_TYPE = [
    { type: 'adult', title: '성인', description: '만 13세 이상' },
    { type: 'child', title: '어린이', description: '만 2~12세' },
    { type: 'infants', title: '유아', description: '만 2세 미만' },
  ];

  const guestColumn = GUEST_TYPE.map((data, idx) => <GuestColumn key={idx} guestData={data} />);

  return <StyledFormGuestToggle ref={toggleRef}>{guestColumn}</StyledFormGuestToggle>;
};

export default FormGuestToggle;

const StyledFormGuestToggle = styled.div`
  z-index: 10;
  position: absolute;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  top: 100px;
  right: 0;
  width: 400px;
  height: 300px;
  padding: 3rem;
  background-color: ${({ theme }) => theme.colors.white};
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1), 0px 0px 4px rgba(51, 51, 51, 0.05);
  border-radius: 1rem;
`;
