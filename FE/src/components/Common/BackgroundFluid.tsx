import { MouseEvent } from 'react';
import styled, { css } from 'styled-components';

interface IBackgroundFluid {
  children?: React.ReactNode;
  onClick?: (event: MouseEvent | Event) => void;
}

const BackgroundFluid = ({ children, onClick, ...props }: IBackgroundFluid) => (
  <BackgroundFluidLayout {...props} onClick={onClick}>
    {children}
  </BackgroundFluidLayout>
);

export default BackgroundFluid;

// --- Styled Components ---
const BackgroundFluidLayout = styled.div<IBackgroundFluid>`
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
`;
