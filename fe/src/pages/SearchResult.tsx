import { useRecoilValue } from 'recoil';
import styled from 'styled-components';

import { isMiniSearchBarOpen } from '@recoil/atoms/searchResult';

import Accommodation from '@components/SearchResult/accommodation/Accommodation';
import Header from '@components/SearchResult/Header';
import Map from '@components/SearchResult/map/Map';

const SearchResult = () => {
  const isOpenMiniSearchBar = useRecoilValue(isMiniSearchBarOpen);

  return (
    <SearchResulWrap>
      <HeaderContainer isOpenMiniSearchBar={isOpenMiniSearchBar}>
        <Header />
      </HeaderContainer>
      <MainContainer>
        <Accommodation />
        <Map />
      </MainContainer>
    </SearchResulWrap>
  );
};

export default SearchResult;

interface serachBar {
  isOpenMiniSearchBar: boolean;
}

const SearchResulWrap = styled.div`
  height: 1024px;
`;

const HeaderContainer = styled.div<serachBar>`
  height: ${({ isOpenMiniSearchBar }) =>
    isOpenMiniSearchBar ? 'auto' : '214px'};
  box-shadow: 0px 0px 4px rgba(129, 82, 82, 0.5),
    0px 2px 4px rgba(0, 0, 0, 0.25);
  backdrop-filter: blur(4px);
  position: relative;
  z-index: 2;
`;

const MainContainer = styled.main`
  display: flex;
  height: 834px;
  width: 100%;
  position: relative;
`;
