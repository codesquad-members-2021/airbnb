import React, { useState, MouseEvent } from 'react';
import styled, { css } from 'styled-components';
import { FiSearch } from 'react-icons/fi';
import { cssTranslate } from '../../../util/styles/CommonStyledCSS';
import { ResponsiveFluid } from '../../Common/ResponsiveFluid';
import { ITextTopBackground } from '../../../util/reference';

interface ISearchMenuItem {
  isBothPadding?: boolean;
  isClicked?: boolean;
}

const SearchBar = ({ searchBarTexts }: ITextTopBackground) => {
  const { menuItems, logoOrBtnCaption: btnCaption } = searchBarTexts;

  const [clickedID, setClickedID] = useState<number>(-1);

  const onSearchMenuItemClick = ({ currentTarget }: MouseEvent<HTMLLIElement>) => {
    const currentTargetID = Number(currentTarget.dataset.id);
    clickedID === currentTargetID ? setClickedID(-1) : setClickedID(currentTargetID);
  };

  // searchMenuItem(li) 생성
  const searchMenuItems = menuItems.map((item, idx) => (
    <SearchMenuItem
      key={idx}
      data-id={idx}
      isBothPadding={idx !== menuItems.length - 1}
      isClicked={idx === clickedID}
      onClick={onSearchMenuItemClick}
    >
      {/* 체크인 / 체크아웃, 요금, 인원 */}
      <div className="item__info">
        <p>{item.text}</p>
        <p>{item.placeHolder}</p>
      </div>

      {idx === menuItems.length - 1 && (
        <SearchButton>
          <FiSearch />{clickedID > -1 && btnCaption}
        </SearchButton>
      )}
    </SearchMenuItem>
  ));
  // ---

  return (
    <SearchBarLayout>
      <SearchMenuList>{searchMenuItems}</SearchMenuList>
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
  padding: 2px;
`;

const SearchMenuItem = styled.li<ISearchMenuItem>`
  display: flex;
  align-items: center;
  padding: ${({ isBothPadding }) =>
    isBothPadding ? '14px 32px;' : '14px 14px 14px 32px;'};
  cursor: pointer;

  border-radius: inherit;

  ${({ isClicked }) =>
    isClicked &&
    css`
      border: 1px solid ${({ theme }) => theme.colors.white};
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

    input {
      ${cssTranslate};
      padding: 0;
    }
  }

  &:hover {
    background-color: ${({ theme }) => theme.colors.gray6};
  }
`;

const SearchButton = styled.button`
  ${cssTranslate};
  width: 100%;
  cursor: pointer;

  display: flex;
  justify-content: space-between;
  align-items: center;
  column-gap: 8px;

  /* font-size: ${({ theme }) => theme.fontSize.XL}; */
  color: ${({ theme }) => theme.colors.white};
  background-color: ${({ theme }) => theme.colors.primary};

  padding: 12px;
  border-radius: 30px;  // 50%

  &:hover {
    background-color: ${({ theme }) => theme.colors.primaryHover};
  }
`;
