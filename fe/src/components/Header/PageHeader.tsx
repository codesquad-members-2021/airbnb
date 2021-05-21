import styled from 'styled-components';

import Nav from './Nav/Nav';
import SearchBar from './Search/SearchBar';

const PageHeader = () => {
  return (
    <HeaderWrap>
      <Nav />
      <SearchBar />
    </HeaderWrap>
  );
};

export default PageHeader;

const HeaderWrap = styled.header`
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
`;
