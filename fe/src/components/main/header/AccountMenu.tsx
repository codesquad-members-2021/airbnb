import { BsPeopleCircle } from "react-icons/bs";
import { FaBars } from "react-icons/fa";
import styled from "styled-components";
const AccountMenu = () => {
  return (
    <StyledAccountMenu>
      <FaBars className="bar" />
      <BsPeopleCircle className="people" />
    </StyledAccountMenu>
  );
};

export default AccountMenu;

const StyledAccountMenu = styled.button`
  display: flex;
  align-items: center;
  cursor: pointer;
  background-color: ${({ theme }) => theme.color.White};
  border-radius: 2rem;
  color: ${({ theme }) => theme.color.Gray3};
  padding: 0.5rem 1rem;
  border: ${({ theme }) => theme.border.Gray4};
  &:hover {
    box-shadow: 0px 16px 32px rgba(0, 0, 0, 0.15),
      0px 3px 8px rgba(0, 0, 0, 0.1);
  }
  .bar {
    font-size: 1.5rem;
  }
  .people {
    margin-left: 1rem;
    font-size: 2rem;
  }
`;
