import { useState, useCallback, useEffect } from 'react';
import styled from 'styled-components';
import MenuIcon from '@material-ui/icons/Menu';
import AccountCircleIcon from '@material-ui/icons/AccountCircle';
import SearchMapNav from './SearchMapNav';
import SearchBar from '@Components/SearchBar';
import Modal from '@Components/Modal';
import Nav from './Nav';

type GNBType = {
  isMain: boolean;
}

const GNB = ({ isMain }: GNBType) => {
  const [showSearchBarState, setShowSearchBarState] = useState(false);

  const handleClickToggleSearchBar = useCallback(() => {
    setShowSearchBarState(searchBarState => !searchBarState);
  }, []);

  const handleClickHideSearchBar = useCallback(({ target }) => {
    if (target.closest('.SearchButton')) return handleClickToggleSearchBar();
    if (target.closest('.SearchBar') || target.closest('.Modal')) return;
    handleClickToggleSearchBar();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  useEffect(() => {
    if (!showSearchBarState) return;
    document.addEventListener('click', handleClickHideSearchBar);
    return () => document.removeEventListener('click', handleClickHideSearchBar);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [showSearchBarState]);

  return (
    <>
      <GNBWrapper isMain={isMain}>
        <Header>
          <Logo>LOGO</Logo>
          {isMain
            ? (<Nav />)
            : (<SearchMapNav {...{ showSearchBarState, handleClickToggleSearchBar }} />)
          }

          <Menu isMain={isMain}>
            <MenuIcon />
            <AccountCircleIcon fontSize="large" />
          </Menu>
        </Header>
        {!isMain && showSearchBarState && <SearchBar />}

      </GNBWrapper>
      {!isMain && showSearchBarState && <Modal isSearchMap />}
    </>
  )
}

const GNBWrapper = styled.div<GNBType>`
  position: ${({ isMain }) => isMain ? '' : 'fixed'};
  box-shadow: ${({ isMain }) => isMain ? '' : '0px 0px 4px rgba(204, 204, 204, 0.5), 0px 2px 4px rgba(0, 0, 0, 0.25)'}; 
  background: ${({ isMain }) => isMain ? 'none' : '#fff'};
  z-index: ${({ isMain }) => isMain ? '0' : '1'};
  width: 100%;
`;

const Header = styled.div`
  display: flex;
  padding: 1rem 0;
  justify-content: space-around;
  gap:10rem;
`;

const Logo = styled.span`
  font-weight:700;
  font-size: 3rem;
  &:hover{
    cursor: pointer;
  }
`;

const Menu = styled.div<GNBType>`
  display:flex;
  background: #fff;
  width: 6rem;
  height: 3rem;
  place-self: center;
  border-radius: 2rem;
  border: ${({ isMain }) => isMain ? 'none' : '1px solid #BDBDBD'};
  place-content: center;
  place-items: center;
  gap: 1rem;

  &:hover{
    cursor: pointer;
  }
`;


export default GNB;
