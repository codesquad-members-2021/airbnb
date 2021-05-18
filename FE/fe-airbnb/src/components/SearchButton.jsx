import { Button, ButtonGroup } from '@chakra-ui/react';
import { ReactComponent as Search } from '../icon/search.svg';

const SearchButton = (props) => {
  return (
    <Button
      leftIcon={<Search />}
      background="#E84C60"
      color="#fff"
      variant="solid"
      borderRadius="30px"
      width="90px"
      height="42px"
      fontSize="18px"
      fontWeight="extrabold"
      _hover={{ bg: '#E84C60' }}
    >
      검색
    </Button>
  );
};

export default SearchButton;
