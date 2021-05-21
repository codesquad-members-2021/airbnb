import styled from "styled-components";

import { MouseEvent } from "react";
type ModalProps = {
  toggle: Boolean;
  children: JSX.Element | JSX.Element[] | null | undefined;
};

const Modal = ({ toggle, children }: ModalProps) => {
  return toggle ? <StyledModal>{children}</StyledModal> : null;
};

export default Modal;

const StyledModal = styled.div`
  background-color: ${({ theme }) => theme.color.White};
  border-radius: 4rem;
  padding: 1rem;
  position: absolute;
  top: 115%;
`;
