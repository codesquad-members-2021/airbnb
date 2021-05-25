import styled from "styled-components";
import { Box } from "@material-ui/core";
import AccountMenu from "./AccountMenu";
import Logo from "./Logo";
import Menus from "./Menus";

const Header = () => {
  const flex = {
    width: "33%",
    display: "flex",
    alignItems: "center",
  };

  return (
    <StyledHeader>
      <Box css={flex} justifyContent="flex-start">
        <Logo />
      </Box>
      <Box css={flex} justifyContent="center">
        <Menus />
      </Box>
      <Box css={flex} justifyContent="flex-end">
        <AccountMenu />
      </Box>
    </StyledHeader>
  );
};

export default Header;

const StyledHeader = styled.header`
  width: 100%;
  padding: 0 5rem;
  display: flex;
  align-items: center;
  justify-content: space-between;
  position: relative;
`;
