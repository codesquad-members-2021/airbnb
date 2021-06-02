import styled, { css } from 'styled-components';
import { forwardRef, useEffect, useRef } from 'react';
import { FiSearch } from 'react-icons/fi';

import { Link } from '../../../../util/MyRouter';
import { useMainDispatch, useMainState } from '../../../../util/contexts/MainContext';
import { useSearchBarState } from '../../../../util/contexts/SearchBarContext';
import { ITextTopBackground } from '../../../../util/reference';
import { CALENDAR_FOCUS, FEE_FOCUS, PEOPLE_FOCUS } from './const';
import { createMonthDateText } from '../../../../util/calendar';

import { ResponsiveFluid } from '../../../Common/ResponsiveFluid';

import CalendarModal from './Modals/CalendarModal';
import FeeModal from './Modals/FeeModal';
import PeopleModal from './Modals/PeopleModal';



interface ISearchMenuItem {
  isClicked?: boolean;
}
/* interface ISearchBar { ref?: Ref<HTMLDivElement>; } */

const SearchBar = forwardRef((
  //@ts-ignore
  { searchBarTexts, searchBarRef }: ITextTopBackground,
) => {
  // 1. 초기 값 설정
  const { menuItems } = searchBarTexts;

  const { searchBarClickedIdx } = useMainState();
  const mainDispatch = useMainDispatch();
  const {
    calendar: { startDate, endDate },
  } = useSearchBarState();

  const checkInPlaceHolderRef = useRef<HTMLParagraphElement>(null);
  const checkOutPlaceHoldertRef = useRef<HTMLParagraphElement>(null);

  // 2. useEffect
  // 1) 달력에서 날짜가 업데이트 되었을 때 (체크인 / 체크아웃)
  useEffect(() => {
    if (!checkInPlaceHolderRef || !checkOutPlaceHoldertRef) return;
    // 체크인
    let checkIn = checkInPlaceHolderRef.current!;
    startDate
      ? (checkIn.innerHTML = createMonthDateText(startDate))
      : (checkIn.innerHTML = '날짜 입력');
    // 체크아웃
    let checkOut = checkOutPlaceHoldertRef.current!;
    endDate
      ? (checkOut.innerHTML = createMonthDateText(endDate))
      : (checkOut.innerHTML = '날짜 입력');
  }, [startDate, endDate]);

  // 3. Events
  const handleSearchMenuItemClick = (idx: number) =>
    mainDispatch({
      type: 'SET_SEARCHBAR_CLICKED_IDX',
      payload: searchBarClickedIdx === idx ? -1 : idx,
    });

  // 4. 컴포넌트 생성 & 정의
  // searchMenuItem(li ) 생성
  const searchMenuItems = menuItems.map((item, idx) => (
    <SearchMenuItem
      key={idx}
      isClicked={idx === searchBarClickedIdx}
      onClick={() => handleSearchMenuItemClick(idx)}
    >
      {/* 체크인 / 체크아웃, 요금, 인원 */}
      {item.text.split('|').map((txt, i) => {
        let checkInOutRef;
        if (txt === '체크인') checkInOutRef = checkInPlaceHolderRef;
        else if (txt === '체크아웃') checkInOutRef = checkOutPlaceHoldertRef;

        return (
          <div className="item__info" key={i}>
            <p>{txt}</p>
            <p ref={checkInOutRef}>{item.placeHolder}</p>
          </div>
        );
      })}

      {idx === menuItems.length - 1 && (
        <SearchButton to={"/search"}>
          <FiSearch />
        </SearchButton>
      )}
    </SearchMenuItem>
  ));

  // ====

  return (
    <SearchBarLayout>
      {/* @ts-ignore */}
      <SearchBarBlock ref={searchBarRef}>
        {/* 검색바 */}
        <SearchBarRow>
          <SearchMenuList>{searchMenuItems}</SearchMenuList>
        </SearchBarRow>

        {/* 검색바의 Item의 Modal들 */}
        {/* 추후 flag로 렌더링 여부결정 */}
        {searchBarClickedIdx > -1 && (
          <SearchBarRow>
            {searchBarClickedIdx === CALENDAR_FOCUS && <CalendarModal />}
            {searchBarClickedIdx === FEE_FOCUS && <FeeModal />}
            {searchBarClickedIdx === PEOPLE_FOCUS && <PeopleModal />}
          </SearchBarRow>
        )}
      </SearchBarBlock>
    </SearchBarLayout>
  );
});

export default SearchBar;

// --- Styled Components ---
const SearchBarLayout = styled(ResponsiveFluid)`
  margin: 0 auto;
  justify-content: center;
  align-items: center;
`;

const SearchBarBlock = styled.div`
  position: relative;
`;

const SearchBarRow = styled.div`
  & + & {
    margin-top: 8px;
  }
  display: flex;
  justify-content: flex-end;
`;

const SearchMenuList = styled.ul`
  display: flex;
  justify-content: space-between;

  background-color: ${({ theme }) => theme.colors.white};
  border: 1px solid ${({ theme }) => theme.colors.gray4};
  border-radius: 60px;
`;

const SearchMenuItem = styled.li<ISearchMenuItem>`
  display: flex;
  align-items: center;
  padding: 14px 0 14px 36px;
  cursor: pointer;
  border-radius: inherit;

  &:after {
    height: 100%;
    content: ' ';
    border-right: 1px solid ${({ theme }) => theme.colors.gray6};
  }

  &:last-child {
    padding: 14px 14px 14px 36px;

    &:after {
      border-right: none;
    }
  }

  &:hover {
    background-color: ${({ theme }) => theme.colors.gray6};
  }

  ${({ isClicked }) =>
    isClicked &&
    css`
      background-color: ${({ theme }) => theme.colors.white};
      box-shadow: rgba(0, 0, 0, 0.2) 0px 6px 20px;
    `}

  div.item__info {
    display: flex;
    flex-direction: column;
    row-gap: 4px;

    p {
      padding: 0;
      margin: 0;
      font-size: ${({ theme }) => theme.fontSize.S};
      font-weight: ${({ theme }) => theme.fontWeight.bold};
    }

    p:nth-child(2) {
      font-size: ${({ theme }) => theme.fontSize.L};
      font-weight: ${({ theme }) => theme.fontWeight.normal};
      color: ${({ theme }) => theme.colors.gray3};
      min-width: 140px;
    }
  }
`;

const SearchButton = styled(Link)`
  cursor: pointer;

  display: flex;
  justify-content: space-between;
  align-items: center;
  column-gap: 8px;

  /* font-size: ${({ theme }) => theme.fontSize.XL}; */
  color: ${({ theme }) => theme.colors.white};
  background-color: ${({ theme }) => theme.colors.primary};

  padding: 12px;
  border-radius: 30px; // 50%

  &:hover {
    background-color: ${({ theme }) => theme.colors.primaryHover};
  }
`;
