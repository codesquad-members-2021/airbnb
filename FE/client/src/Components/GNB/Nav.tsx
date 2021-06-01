import styled from 'styled-components';

const Nav = () => {
  return (
    <NavWrapper>
      <NavItem>숙소</NavItem>
      <NavItem>체험</NavItem>
      <NavItem>온라인 체험</NavItem>
    </NavWrapper>
  )
}

const NavWrapper = styled.div`
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
    text-decoration:underline;
  }
`;
export default Nav;
