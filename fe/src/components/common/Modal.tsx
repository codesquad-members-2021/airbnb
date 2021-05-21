import styled, {
  CSSProp,
  DefaultTheme,
} from "styled-components";
import useOnClickOutside from "hooks/useOnClickOutside";
import {  useRef, Ref } from "react";
interface StyledModalProps {
  br?: String;
  position?: CSSProp<DefaultTheme> | undefined;
}

interface ModalProps extends  StyledModalProps {
  toggle: Boolean;
  children: JSX.Element | JSX.Element[] | null | undefined;
  handleClick: (event: MouseEvent | Event) => void
}

const Modal = ({ toggle, children, br, position,handleClick }: ModalProps) => {
  
  const ref: Ref<HTMLDivElement > = useRef<HTMLDivElement >(null);
  useOnClickOutside(ref, handleClick);

  return toggle ? (
    <StyledModal {...{br, position}} ref={ref}>
      {children}
    </StyledModal>
  ) : null;
};

export default Modal;


const StyledModal = styled.div<StyledModalProps>`
  background-color: ${({ theme }) => theme.color.White};
  border-radius: ${({ br }) => `${br}`};
  padding: 1rem;
  position: absolute;
  ${({ position }) => position}
  
  box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
    0px 0px 4px rgba(51, 51, 51, 0.05);
`;
