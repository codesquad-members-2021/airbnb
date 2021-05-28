import styled from 'styled-components';
import Count from './Count';

type guests = {
  id: string;
  category: string;
  description: string;
};

type Props = {
  guestType: guests;
};

const GuestItem = ({ guestType }: Props) => {
  const { id, category, description } = guestType;
  return (
    <GuestContainer>
      <TextWrap>
        <Text title="title">{category}</Text>
        <Text title="">{description}</Text>
      </TextWrap>
      <Count guestID={id} />
    </GuestContainer>
  );
};

export default GuestItem;

interface textProp {
  title: string;
}

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

const Text = styled.span<textProp>`
  padding: 0.2rem 0;
  color: ${({ theme, title }) =>
    title ? theme.color.black : theme.color.gray3};
  font-size: ${({ theme, title }) =>
    title ? theme.fontSize.base : theme.fontSize.m};
  font-weight: ${({ theme, title }) => (title ? theme.fontWeight.bold : '')};
`;
