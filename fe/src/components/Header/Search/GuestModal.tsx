import styled from 'styled-components';
import GuestItem from './GuestItem';

type guests = {
  type: string;
  subType: string;
};

const GuestModal = () => {
  const guestTypes: guests[] = [
    { type: '성인', subType: '만 13세 이상' },
    { type: '어린이', subType: '만 2~13세 미만' },
    { type: '유아', subType: '만 2세 미만' },
  ];

  return (
    <ModalWrap>
      {guestTypes.map((guestType: guests) => (
        <GuestItem key={guestType.type} guestType={guestType} />
      ))}
    </ModalWrap>
  );
};

export default GuestModal;

const ModalWrap = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  position: absolute;
  margin-top: 2rem;
  right: 0;
  padding: 4rem;
  width: 400px;
  height: 355px;
  background-color: ${({ theme }) => theme.color.white};
`;
