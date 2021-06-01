import styled from 'styled-components';
import { useRecoilValue, useSetRecoilState } from 'recoil';

import { ReactComponent as SearchIcon } from '@assets/search.svg';

import { totalGuestState } from '@recoil/atoms/guests';
import { miniSearchBarDate } from '@recoil/atoms/date';
import { searchBarPriceShow } from '@recoil/atoms/price';
import { isMiniSearchBarOpen } from '@recoil/atoms/searchResult';

const MiniSearchBar = () => {
  const totalGuest = useRecoilValue(totalGuestState);
  const date = useRecoilValue(miniSearchBarDate);
  const price = useRecoilValue(searchBarPriceShow);
  const setToggleMiniSearchBar = useSetRecoilState(isMiniSearchBarOpen);

  const handleClickMiniSearchBar = () => setToggleMiniSearchBar(false);

  return (
    <SearchWrap onClick={handleClickMiniSearchBar}>
      <div>
        <span>{date}</span>
      </div>
      <div>
        <span>{price}</span>
      </div>
      <div>
        <span>{totalGuest}</span>
      </div>
      <SearchIconWrap>
        <SearchIcon />
      </SearchIconWrap>
    </SearchWrap>
  );
};

export default MiniSearchBar;

const SearchWrap = styled.div`
  padding: 15px 0;
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  width: 410px;
  height: 48px;
  background: ${({ theme }) => theme.color.white};
  border: 1px solid ${({ theme }) => theme.color.gray4};
  border-radius: ${({ theme }) => theme.borderRadius.s};
  position: relative;
  font-size: ${({ theme }) => theme.fontSize.s};
`;

const SearchIconWrap = styled.div`
  ${({ theme }) => theme.flexCenter};
  right: -3%;
  top: 50%;
  width: 32px;
  height: 32px;
  cursor: pointer;
  position: absolute;
  border-radius: ${({ theme }) => theme.borderRadius.s};
  background-color: ${({ theme }) => theme.color.coral};
  transform: translate3d(-50%, -50%, 0);
`;
