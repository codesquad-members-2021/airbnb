import styled from 'styled-components';

import { childProp } from './childType';

const Title = ({ children }: childProp) => {
  return <TitleWrap>{children}</TitleWrap>;
};

export default Title;

const TitleWrap = styled.h6`
  margin: 0.5rem 0;
  font-size: ${({ theme }) => theme.fontSize.s};
  font-weight: ${({ theme }) => theme.fontWeight.base};
`;
