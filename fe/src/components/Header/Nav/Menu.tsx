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
  cursor: pointer;

  li {
    width: auto;
    height: 23px;
    padding: 0 12px;
    position: relative;

    &::before {
      content: '';
      display: block;
      width: 100%;
      transition: width 0.7s cubic-bezier(1, 0, 0, 1);
    }

    &:hover::before {
      content: '';
      display: block;
      width: 0;
      position: absolute;
      transform: translate3d(-50%, -50%, 0);
      left: 50%;
      bottom: -10%;
      border-bottom: 2px solid gray;
    }
  }
`;
