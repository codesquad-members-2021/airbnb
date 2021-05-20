import React from 'react';
import styled from 'styled-components';

type childProp = {
  children: React.ReactNode;
};

const Title = ({ children }: childProp) => {
  return <TitleWrap>{children}</TitleWrap>;
};

export default Title;

const TitleWrap = styled.h6`
  margin-bottom: 0.5rem;
  font-size: ${({ theme }) => theme.fontSize.s};
  font-weight: ${({ theme }) => theme.fontWeight.base};
`;
