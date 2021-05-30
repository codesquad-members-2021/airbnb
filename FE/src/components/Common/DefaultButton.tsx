import styled from 'styled-components';
import { CustomOnClick, CustomChildren } from '../../util/types';

interface IDefaultButton {
  onClick?: CustomOnClick;
  children?: CustomChildren;
}

const DefaultButton = ({ children, onClick, ...props }: IDefaultButton) => (
  <DefaultButtonLayout {...props} onClick={onClick}>
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
