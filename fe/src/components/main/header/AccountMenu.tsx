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
  background-color: white;
  border-radius: 2rem;
  color: gray;
  padding: 0.5rem 1rem;
  border: 1px solid #BDBDBD;

  .bar {
    font-size: 1.5rem;
  }
  .people {
    margin-left: 1rem;
    font-size: 2rem;
  }
`;
