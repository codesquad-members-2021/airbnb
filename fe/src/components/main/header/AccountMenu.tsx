import Modal from "components/common/Modal";
import { useState, MouseEvent, useRef, Ref } from "react";
import { BsPeopleCircle } from "react-icons/bs";
import { FaBars } from "react-icons/fa";
import useOnClickOutside from "hooks/useOnClickOutside";
import styled, {css}from "styled-components";
import LogInList from "./LogInList";
const AccountMenu = () => {
  const [toggle, setToggle] = useState<Boolean>(false);

  const handleClick = (event: MouseEvent | Event) => {
    setToggle(!toggle);
  };

  const ref: Ref<HTMLButtonElement> = useRef<HTMLButtonElement>(null);
  useOnClickOutside(ref, handleClick);
  return (
    <>
      <StyledAccountMenu onClick={handleClick} ref={ref}>
        <FaBars className="bar" />
        <BsPeopleCircle className="people" />
        <Modal toggle={toggle} br="0.5rem" position={ModalPosition}>
          <LogInList />
        </Modal>
      </StyledAccountMenu>
    </>
  );
};

export default AccountMenu;
const ModalPosition = css`
  top: 115%;
  right: 0;
`;

const StyledAccountMenu = styled.button`
  display: flex;
  align-items: center;
  cursor: pointer;
  background-color: ${({ theme }) => theme.color.White};
  border-radius: 2rem;
  color: ${({ theme }) => theme.color.Gray3};
  padding: 0.5rem 1rem;
  border: ${({ theme }) => theme.border.Gray4};
  &:hover {
    box-shadow: 0px 16px 32px rgba(0, 0, 0, 0.15),
      0px 3px 8px rgba(0, 0, 0, 0.1);
  }
  .bar {
    font-size: 1.5rem;
  }
  .people {
    margin-left: 1rem;
    font-size: 2rem;
  }
  position: relative;
`;


