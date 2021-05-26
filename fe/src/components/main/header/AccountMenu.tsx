import Modal from "components/common/Modal";
import { useState, MouseEvent } from "react";
import { BsPeopleCircle } from "react-icons/bs";
import { FaBars } from "react-icons/fa";

import styled, { css } from "styled-components";
import LogInList from "./LogInList";
import LogOutList from "./LogOutList";
const AccountMenu = () => {
  const [toggle, setToggle] = useState(false);

  const handleClick = (event: MouseEvent | Event) => {
    setToggle(!toggle);
  };
  const isLogIn = localStorage.getItem("isLogIn");

  return (
    <>
      <StyledAccountMenu onClick={handleClick}>
        <FaBars className="bar" />
        <BsPeopleCircle className="people" />
      </StyledAccountMenu>
      <Modal
        toggle={toggle}
        handleClick={handleClick}
        br="0.5rem"
        position={ModalPosition}
      >
        {isLogIn === "true" ? <LogOutList /> : <LogInList />}
      </Modal>
    </>
  );
};

export default AccountMenu;
const ModalPosition = css`
  top: 115%;
  right: 5rem;
`;

const StyledAccountMenu = styled.button`
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
`;
