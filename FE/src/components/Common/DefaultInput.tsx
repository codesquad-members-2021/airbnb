import styled from 'styled-components';
import { ICustomProps } from '../../util/types';

const DefaultInput = ({ children, ...props }: ICustomProps) => (
  <DefaultInputLayout {...props} />
);

export default DefaultInput;

// --- Styled Components ---
const DefaultInputLayout = styled.input`
  background-color: transparent;
  background-repeat: no-repeat;
  overflow: hidden;
  outline: none;
  border: none;
`;
