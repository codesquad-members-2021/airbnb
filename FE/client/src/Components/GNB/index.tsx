import styled from 'styled-components';
import MenuIcon from '@material-ui/icons/Menu';
import AccountCircleIcon from '@material-ui/icons/AccountCircle';

const GNB = () => {
  return (
    <GNBWrapper>
      <Logo>LOGO</Logo>
      <Nav>
        <NavItem>숙소</NavItem>
        <NavItem>체험</NavItem>
        <NavItem>온라인 체험</NavItem>
      </Nav>
      <Menu>
        <MenuIcon />
        <AccountCircleIcon fontSize="large"/>
      </Menu>
    </GNBWrapper>
  )
}

const GNBWrapper = styled.div`
  display: flex;
  margin:  0 auto;
  padding-top: 1rem;
  width: 90%;
  justify-content: space-between;
`;

const Logo = styled.span`
  font-weight:700;
  font-size: 3rem;
  &:hover{
    cursor: pointer;
  }
`;

const Nav = styled.div`
  display:flex;
  place-items: center;
  gap: 2rem;
  color:  #7b7b7b;
  font-weight: 600;
`;

const NavItem = styled.span`
  font-size: 1.1rem;
  &:hover{
    cursor: pointer;
  }
`;

const Menu = styled.div`
  display:flex;
  background: #fff;
  width: 6rem;
  height: 3rem;
  place-self: center;
  border-radius: 2rem;
  place-content: center;
  place-items: center;
  gap: 1rem;
  &:hover{
    cursor: pointer;
  }
`;
export default GNB;
