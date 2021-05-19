import styled from "styled-components";

type MenuItemProps = {
  children: string;
};

const MenuItem = ({ children }: MenuItemProps) => {
  return (
    <StyledMenuItem>
      {children}
      <StyledBar />
    </StyledMenuItem>
  );
};

export default MenuItem;

const StyledMenuItem = styled.li`
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 7rem;
  font-size: 1.2rem;
  
  &:hover {
    cursor: pointer;
    font-weight: 700;
    div {
      width: 30%;
    }
  }
  div {
    margin: 0.5rem 0;
  }
`;

const StyledBar = styled.div`
  width: 10%;
  background-color: black;
  height: 0.15rem;
`;
