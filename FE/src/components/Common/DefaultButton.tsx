import styled from 'styled-components';
import { ICustomProps } from '../../util/types';

const DefaultButton = ({ children, ...props }: ICustomProps) => (
  <DefaultButtonLayout {...props}>{children}</DefaultButtonLayout>
);

export default DefaultButton;

// --- Styled Components ---
const DefaultButtonLayout = styled.button`
  background-color: transparent;
  background-repeat: no-repeat;
  overflow: hidden;
  outline: none;
  border: none;
`;
