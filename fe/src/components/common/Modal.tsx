import styled from "styled-components";
import { useState } from "react";
type Props = {
  toggle: Boolean;
  children: JSX.Element | JSX.Element[];
};

const Modal = ( { children }: Props) => {
  const [toggle, setToggle] = useState<Boolean>(false);
  return toggle ? (<StyledModal {...{ toggle }}>{children}</StyledModal> ) : null;
};

export default Modal;

const StyledModal = styled.div`
  background-color:  ${({theme}) => theme.color.White};
  border-radius: 4rem;
  padding: 1rem;
`;
