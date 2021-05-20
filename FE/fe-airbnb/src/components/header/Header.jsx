import { Flex, Spacer } from '@chakra-ui/layout';
import Category from './Category';
import Logo from './Logo';
import Menu from './Menu';

const Header = (props) => {
  return (
    <Flex>
      <Logo />
      <Spacer />
      <Category />
      <Spacer />
      <Menu />
    </Flex>
  );
};

export default Header;
