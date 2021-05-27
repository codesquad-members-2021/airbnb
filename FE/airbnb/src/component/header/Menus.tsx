import React from "react";
import styled from "styled-components";

function Menus() {
  return (
    <MenuContainer>
      <li>숙소</li>
      <li>체험</li>
      <li>온라인 체험</li>
    </MenuContainer>
  );
}

export default Menus;

const MenuContainer = styled.ul`
  width: 200px;
  display: flex;
  justify-content: space-between;
  li {
    color: ${({ theme }) => theme.color.gray1};
    cursor: pointer;
    &:hover {
      color: ${({ theme }) => theme.color.black};
      font-weight: bold;
      text-decoration: underline;
    }
  }
`;
