import styled from 'styled-components';
import MenuIcon from '@material-ui/icons/Menu';
import AccountCircleIcon from '@material-ui/icons/AccountCircle';
import SearchMapNav from './SearchMapNav';

type GNBType = {
  isMain: boolean;
}

const GNB = ({ isMain }: GNBType) => {
  return (
    <GNBWrapper isMain={isMain}>
      <Logo>LOGO</Logo>
      {isMain
        ? (<Nav>
          <NavItem>숙소</NavItem>
          <NavItem>체험</NavItem>
          <NavItem>온라인 체험</NavItem>
        </Nav>)
        : (<SearchMapNav />)
      }

      <Menu isMain={isMain}>
        <MenuIcon />
        <AccountCircleIcon fontSize="large" />
      </Menu>
    </GNBWrapper>
  )
}

const GNBWrapper = styled.div<GNBType>`
  display: flex;
  padding: 1rem 0;
  width: 100%;
  justify-content: space-around;
  box-shadow: ${({isMain}) => isMain ? '' : '0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25)'}; 
  gap:10rem;
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

const Menu = styled.div<GNBType>`
  display:flex;
  background: #fff;
  width: 6rem;
  height: 3rem;
  place-self: center;
  border-radius: 2rem;
  border: ${({ isMain }) => isMain ? 'none' : '1px solid #BDBDBD'};
  place-content: center;
  place-items: center;
  gap: 1rem;

  &:hover{
    cursor: pointer;
  }
`;


export default GNB;
