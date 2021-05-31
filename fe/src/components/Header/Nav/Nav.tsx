import styled from 'styled-components';

import Logo from './Logo';
import Form from './Form';
import Profile from '@components/Header/ProfileMenu/Profile';
import { useParams } from 'react-router';

import SearchBar from '@components/Header/Search/SearchBar';

const Nav = () => {
  const params: string | null = useParams();

  return (
    <NavContainer>
      <Logo />
      {params?.search ? <SearchBar /> : <Form />}
      <Profile />
    </NavContainer>
  );
};

export default Nav;

const NavContainer = styled.nav`
  padding: 0 ${({ theme }) => theme.padding.base};
  display: flex;
  width: 100%;
  height: 94px;
  align-items: center;
  justify-content: space-between;
`;
