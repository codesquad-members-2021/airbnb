import styled from 'styled-components';

import { ReactComponent as SearchIcon } from '@assets/search.svg';
import { Link } from 'react-router-dom';
import { useSetRecoilState } from 'recoil';
import { isMiniSearchBarOpen } from '@recoil/atoms/searchResult';

const SearchButton = () => {
  const setToggleMiniSearchBar = useSetRecoilState(isMiniSearchBarOpen);
  const handleClickMiniSearchBar = () => setToggleMiniSearchBar(true);

  return (
    <Link to="search" onClick={handleClickMiniSearchBar}>
      <SearchBtnWrap>
        <SearchClickBtn>
          <div>
            <SearchIcon />
          </div>
          <Span>검색</Span>
        </SearchClickBtn>
      </SearchBtnWrap>
    </Link>
  );
};

export default SearchButton;

// width 값 지정해줘야함
const SearchBtnWrap = styled.div`
  cursor: pointer;
`;

const SearchClickBtn = styled.button`
  ${({ theme }) => theme.flexCenter};
  position: absolute;
  right: -3%;
  width: 90px;
  height: 42px;
  cursor: pointer;
  border-radius: ${({ theme }) => theme.borderRadius.s};
  background-color: ${({ theme }) => theme.color.coral};
  transform: translate3d(-50%, -50%, 0);
`;

const Span = styled.span`
  color: ${({ theme }) => theme.color.white};
`;
