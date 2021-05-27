import styled from 'styled-components';
import { Center } from '@chakra-ui/react';
import { ReactComponent as SearchIcon } from '../icon/search.svg';

const SearchButton = ({ size }) => {
  return (
    <Button size={size}>
      <Center>
        <SearchIcon />
        {size === 'compact' ? <></> : <span>검색</span>}
      </Center>
    </Button>
  );
};

const Button = styled.button`
  background-color: ${({ theme }) => theme.colors.pink};
  color: ${({ theme }) => theme.colors.white};
  font-weight: bold;
  font-size: ${({ theme }) => theme.fontSizes.M};
  border-radius: ${({ theme }) => theme.borders.M};
  width: ${({ size }) => (size === 'compact' ? '40px' : '90px')};
  height: 40px;

  span {
    margin-left: 5px;
  }
`;

export default SearchButton;
