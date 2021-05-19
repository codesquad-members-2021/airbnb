import styled from "styled-components";
import { Box, Center, Flex, Spacer } from "@chakra-ui/react";
import AccountMenu from "./AccountMenu";
import Logo from "./Logo";
import Menus from "./Menus";

const Header = () => {
  return (
    <StyledHeader>
      <Box w="33%">
        <Logo />
      </Box>
      <Center w="33%">
        <Menus />
      </Center>
      <Flex w="33%">
        <Spacer />
        <AccountMenu />
      </Flex>
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

`;
