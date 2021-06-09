import { MouseEvent } from 'react';
import styled, { css } from 'styled-components';

interface IBackground {
  children?: React.ReactNode;
  backgroundColor?: string | '';
  onClick?: (event: MouseEvent | Event) => void;
}

const Background = ({ children, backgroundColor, ...props}: IBackground) => (
  <BackgroundLayout
    {...props}
    backgroundColor={backgroundColor}
  >
    {children}
  </BackgroundLayout>
);

export default Background;

// --- Styled Components ---
const BackgroundLayout = styled.div<IBackground>`
  ${({ backgroundColor }) =>
    backgroundColor &&
    css`
      background-color: ${({ theme }) =>
        theme.colors[backgroundColor]
          ? theme.colors[backgroundColor]
          : backgroundColor};
    `}
`;
