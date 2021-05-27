import styled from 'styled-components';

import { childProp } from './childType';

const SmallText = ({ children }: childProp) => {
  return <StyledDiv>{children}</StyledDiv>;
};

export default SmallText;

const StyledDiv = styled.div`
  display: flex;
  align-items: center;
  width: 100%;
  padding: 0;
  height: 23px;
  color: ${({ theme }) => theme.color.gray3};
  outline: 0;
  border: 0;
  font-size: ${({ theme }) => theme.fontSize.s};
`;
