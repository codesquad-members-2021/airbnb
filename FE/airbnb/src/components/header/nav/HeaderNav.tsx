import { ReactElement, useRef } from 'react';
import styled from 'styled-components';
import useToggle from '../../../hooks/useToggle';
import { SvgMenuBar, SvgUser } from '../../svg/svg';
import NavUserToggle from './NavUserToggle';

const HeaderNav = () => {
  const navRef = useRef<HTMLDivElement>(null);
  const toggleRef = useRef<HTMLDivElement>(null);
  const open = useToggle({ clickRef: navRef, toggleRef });
  return (
    <StyleNavWrapper>
      <StyleHeaderNav ref={navRef}>
        <SvgMenuBar />
        <SvgUser />
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
