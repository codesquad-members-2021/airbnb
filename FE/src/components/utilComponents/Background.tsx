import styled from 'styled-components';
import { IBackgroundProps } from '../../common/types';

const Background = ({ color, children }: IBackgroundProps) => (
  <StyledBackground color={color}>{children}</StyledBackground>
);

export default Background;

// --- Styled Components ---
const StyledBackground = styled.div<{
  color: string;
}>`
  background-color: ${({ theme, color }) => theme.colors[color || 'black1']};
`;