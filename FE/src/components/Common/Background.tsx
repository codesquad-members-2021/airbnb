import { MouseEventHandler } from 'react';
import styled, { css } from 'styled-components';

interface IBackground {
  children?: React.ReactNode;
  backgroundColor?: string | '';
  onClick?: MouseEventHandler | undefined;
}

const Background = ({ children, backgroundColor, onClick }: IBackground) => (
  <StyledBackground onClick={onClick} backgroundColor={backgroundColor}>
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
`;
