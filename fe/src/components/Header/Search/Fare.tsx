import styled from 'styled-components';

import SmallText from '@components/common/SmallText';
import Title from '@components/common/Title';

const Fare = () => {
  return (
    <FareWrap>
      <Title>요금</Title>
      <SmallText>금액대 설정</SmallText>
    </FareWrap>
  );
};

export default Fare;

const FareWrap = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  height: 100%;
  width: 256px;
  &:hover {
    background-color: ${({ theme }) => theme.color.gray6};
  }
`;
