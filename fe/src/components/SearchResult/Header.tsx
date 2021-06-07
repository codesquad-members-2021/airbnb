import { useRecoilValue } from 'recoil';
import styled from 'styled-components';

import { isMiniSearchBarOpen } from '@recoil/atoms/searchResult';

import Logo from '@components/Header/Nav/Logo';
import Form from '@components/Header/Nav/Form';
import Profile from '@components/Header/ProfileMenu/Profile';
import SearchBar from '@components/Header/Search/SearchBar';

import MiniSearchBar from './MiniSearchBar';

const Header = () => {
  const toggleSearchBar = useRecoilValue(isMiniSearchBarOpen);

  return (
    <>
      <NavContainer>
        <Logo />
        {toggleSearchBar ? <MiniSearchBar /> : <Form />}
        <Profile />
      </NavContainer>
      {toggleSearchBar ? <></> : <SearchBar />}
    </>
  );
};

export default Header;

const NavContainer = styled.nav`
  padding: 0 ${({ theme }) => theme.padding.base};
  display: flex;
  width: 100%;
  height: 94px;
  align-items: center;
  justify-content: space-between;
`;
