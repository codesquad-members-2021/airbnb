import styled from 'styled-components';
import { CustomOnClick, CustomChildren } from '../../util/types';

interface IDefaultButton {
  onClick?: CustomOnClick;
  disabled?: boolean;
  children?: CustomChildren;
}

const DefaultButton = ({ onClick, disabled, children, ...props }: IDefaultButton) => (
  <DefaultButtonLayout {...props} onClick={onClick} disabled={disabled}>
    {children}
  </DefaultButtonLayout>
);

export default DefaultButton;

// --- Styled Components ---
const DefaultButtonLayout = styled.button`
  cursor: pointer;
  background-color: transparent;
  background-repeat: no-repeat;
  overflow: hidden;
  outline: none;
  border: none;
`;
