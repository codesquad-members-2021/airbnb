import styled from 'styled-components';
import { Center } from '@chakra-ui/react';
import { ReactComponent as AvatarIcon } from '../icon/user.svg';
import { ReactComponent as MenuIcon } from '../icon/menu.svg';

const UserButton = (props) => {
  return (
    <Button>
      <Center>
        <MenuIcon />
        <AvatarDiv>
          <AvatarIcon />
        </AvatarDiv>
      </Center>
    </Button>
  );
};

const Button = styled.button`
  background-color: ${({ theme }) => theme.colors.white};
  border: 1px solid ${({ theme }) => theme.colors.gray4};
  border-radius: ${({ theme }) => theme.borders.M};
  /* padding: 4px 4px 4px 16px; */
  width: 76px;
  height: 40px;
`;

const AvatarDiv = styled.div`
  background-color: ${({ theme }) => theme.colors.gray3};
  border-radius: ${({ theme }) => theme.borders.M};
  margin-left: 5px;
  width: 32px;
  height: 32px;
`;

export default UserButton;
