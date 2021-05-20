import { FaAirbnb } from "react-icons/fa";
import styled from "styled-components";

const Logo = () => {
  return (
    <StyledLogo>
      <FaAirbnb />
      WOOSUMONBNB
    </StyledLogo>
  );
};

export default Logo;

const StyledLogo = styled.span`
  font-size: 2rem;
  font-weight: 800;
  display: flex;
  align-items: center;
  svg {
    margin-right: 1rem;
  }
`;
