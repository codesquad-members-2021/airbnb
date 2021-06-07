import styled from "styled-components";
import { useState, useEffect } from 'react';
import { ReactComponent as Menu } from "image/menu.svg";
import { ReactComponent as LoginLogo } from "image/loginLogo.svg";
import LoginModal from "./LoginModal";

const Login = () => {
  const [clicked, setClicked] = useState(false);

  const handleClick = () => {
    clicked === false ? setClicked(true) : setClicked(false);
  }

  useEffect(() => {
    document.body.addEventListener('click', closePopup);
    return function cleanup(){
        window.removeEventListener('click', closePopup);
    }
  }, [])

  const closePopup = (e: MouseEvent): void => {
    const target = e.target as HTMLElement;
    !target.closest('.login-modal') && !target.closest('.hamburger-button') && setClicked(false);
  }

  return (
    <HamburgerLayout>
      <Hamburger onClick={handleClick} className="hamburger-button">
        <Menu />
        <LoginLogo />
      </Hamburger>
      {clicked ? <LoginModal/> : null}
    </HamburgerLayout>
  );
};



const HamburgerLayout = styled.div`
  position: relative;
`

const Hamburger = styled.a`
  width: 76px;
  height: 40px;
  border: 1px solid #dddddd;
  border-radius: 30px;
  color: #555;
  text-align: center;
  cursor: pointer;
  padding: 5px 5px 5px 12px;
  display: flex;
  align-items: center;
  background-color: #fff;
  
  &:hover{
    box-shadow: 2px 2px 5px #555;
    transition: box-shadow 0.2s ease;
  }

  & > svg {
    padding: 8px;
  }
`;


export default Login;
