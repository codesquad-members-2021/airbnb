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
  &:hover {
    cursor: pointer;
    div {
      width: 60%;
    }
  }
  div {
    margin: 1rem 0;
  }
`;

const StyledBar = styled.div`
  width: 20%;
  background-color: black;
  height: 0.2rem;
`;
