import styled from 'styled-components';
import Count from './Count';

type guests = {
  type: string;
  subType: string;
};

type Props = {
  guestType: guests;
};

const GuestItem = ({ guestType }: Props) => {
  const { type, subType } = guestType;
  return (
    <GuestContainer>
      <TextWrap>
        <span>{type}</span>
        <span>{subType}</span>
      </TextWrap>
      <Count type={type} />
    </GuestContainer>
  );
};

export default GuestItem;

const TextWrap = styled.div`
  display: flex;
  flex-direction: column;
`;

const GuestContainer = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  width: 272px;
  height: 43px;
`;
