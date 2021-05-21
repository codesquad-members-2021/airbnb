import styled from 'styled-components';
import { IBackgroundProps } from '../../common/types';

const Background = ({ strColor, children }: IBackgroundProps) => (
  <StyledBackground strColor={strColor}>{children}</StyledBackground>
);

export default Background;

// --- Styled Components ---
const StyledBackground = styled.div<{ strColor: string }>`
  background-color: ${({ theme, strColor }) =>
    theme.colors[strColor || 'black1']};
`;
