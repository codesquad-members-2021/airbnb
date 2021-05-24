import { useRef } from 'react';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import { ReactComponent as MenuBar } from '../../../assets/svg/Property 1=menu.svg';
import { ReactComponent as User } from '../../../assets/svg/Property 1=user.svg';
import NavUserToggle from './NavUserToggle';

const HeaderNav = () => {
  const navRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const { open } = useToggle({ clickRef: navRef, toggleRef });
  return (
    <StyleNavWrapper>
      <StyleHeaderNav ref={navRef} data-type='nav'>
        <MenuBar />
        <User />
      </StyleHeaderNav>
      {open && <NavUserToggle toggleRef={toggleRef} dataBtn='toggle' />}
    </StyleNavWrapper>
  );
};

export default HeaderNav;

const StyleNavWrapper = styled.div`
  position: relative;
`;

const StyleHeaderNav = styled.div`
  display: flex;
  align-items: center;
  justify-content: center;
  padding: 4px 8px;
  background: ${({ theme }) => theme.colors.white};
  border: ${({ theme }) => `1px solid ${theme.colors.gray4}`};
  box-sizing: border-box;
  border-radius: 30px;
  margin-left: 12px;
  cursor: pointer;
`;
