import styled from 'styled-components';
import GuestItem from './GuestItem';

type guests = {
  id: string;
  category: string;
  description: string;
};

const GuestModal = () => {
  const guestTypes: guests[] = [
    { id: 'adult', category: '성인', description: '만 13세 이상' },
    { id: 'child', category: '어린이', description: '만 2~13세 미만' },
    { id: 'baby', category: '유아', description: '만 2세 미만' },
  ];

  return (
    <ModalWrap>
      {guestTypes.map((type: guests) => (
        <GuestItem key={type.id} guestType={type} />
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
  top: 85%;
  right: 0;
  padding: 4rem;
  width: 400px;
  height: 355px;
  z-index: 10;
  background-color: ${({ theme }) => theme.color.white};
`;
