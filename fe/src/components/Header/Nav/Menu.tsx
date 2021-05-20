import styled from 'styled-components';

const Menu = () => {
  return (
    <MenuContainer>
      <li>숙소</li>
      <li>체험</li>
      <li>온라인 체험</li>
    </MenuContainer>
  );
};

export default Menu;

const MenuContainer = styled.ul`
  display: flex;
  align-items: center;
  text-align: center;
  justify-content: center;
`;
