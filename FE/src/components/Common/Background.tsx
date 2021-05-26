import { MouseEventHandler } from 'react';
import styled, { css } from 'styled-components';

interface IBackground {
  children?: React.ReactNode;
  backgroundColor?: string | '';
  coverBody?: boolean;
  onClick?: MouseEventHandler | undefined;
}

const Background = ({ children, backgroundColor, coverBody, onClick }: IBackground) => (
  <StyledBackground
    onClick={onClick}
    backgroundColor={backgroundColor}
    coverBody={coverBody}
  >
    {children && children}
  </StyledBackground>
);

export default Background;

// --- Styled Components ---
const StyledBackground = styled.div<IBackground>`
  ${({ backgroundColor }) =>
    backgroundColor &&
    css`
      background-color: ${({ theme }) =>
        theme.colors[backgroundColor]
          ? theme.colors[backgroundColor]
          : backgroundColor};
    `}

  ${({ coverBody }) =>
    coverBody &&
    css`
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
    `}
`;