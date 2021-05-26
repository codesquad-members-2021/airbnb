import React, {
  useState,
  FunctionComponent,
  useEffect,
  MouseEvent,
} from 'react';
import styled, { css } from 'styled-components';
import { FiSearch } from 'react-icons/fi';
import { cssTranslate } from '../../../util/styles/CommonStyledCSS';
import { ResponsiveFluid } from '../../Common/ResponsiveFluid';
import { ITextTopBackground } from '../../../util/reference';

interface ISearchMenuItem {
  isClicked?: boolean;
}

const SearchBar: FunctionComponent<ITextTopBackground> = ({
  searchBarTexts,
}) => {
  const { menuItems } = searchBarTexts;
  const [clickedID, setClickedID] = useState<number>(-1);

  const onExceptSearchBarClick = (e: MouseEvent | Event) => {
    const target = e.target as HTMLElement;
    !target.closest('.searchbar__list') && setClickedID(-1);
  };

  useEffect(() => {
    document.querySelector('#root')?.addEventListener('click', onExceptSearchBarClick);
    return () => document.querySelector('#root')?.removeEventListener('click', onExceptSearchBarClick);
  }, []);

  // searchMenuItem(li) 생성
  const searchMenuItems = menuItems.map((item, idx) => (
    <SearchMenuItem
      key={idx}
      isClicked={idx === clickedID}
      onClick={() =>
        setClickedID((clickedID) => (clickedID === idx ? -1 : idx))
      }
    >
      {/* 체크인 / 체크아웃, 요금, 인원 */}
      {item.text.split('|').map((txt, i) => (
        <div className="item__info" key={i}>
          <p>{txt}</p>
          <p>{item.placeHolder}</p>
        </div>
      ))}


      {idx === menuItems.length - 1 && (
        <SearchButton>
          <FiSearch />
        </SearchButton>
      )}
    </SearchMenuItem>
  ));
  // ---

  return (
    <SearchBarLayout>
      <SearchMenuList className="searchbar__list">
        {searchMenuItems}
      </SearchMenuList>
    </SearchBarLayout>
  );
};

export default SearchBar;

// --- Styled Components ---
const SearchBarLayout = styled(ResponsiveFluid)`
  margin: 0 auto;
  justify-content: center;
  align-items: center;
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
    border-right: 1px solid ${({ theme }) => theme.colors.gray5};
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
      &:after {
        border-right: 1px solid transparent;
      }
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

    input {
      ${cssTranslate};
      padding: 0;
    }
  }
`;

const SearchButton = styled.button`
  ${cssTranslate};
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
