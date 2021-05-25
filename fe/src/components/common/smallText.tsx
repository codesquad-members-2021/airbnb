import styled from 'styled-components';

import { childProp } from './childType';

const smallText = ({ children }: childProp) => {
  return (
    <TextWrap>
      <Span>{children}</Span>
    </TextWrap>
  );
};

export default smallText;

const TextWrap = styled.div``;

const Span = styled.span``;
