import styled from "styled-components";
import { BOX } from "@/Styles/CommonStyles";
import theme from "@/Styles/theme";
import { ReactComponent as Logo } from "@/assets/logo.svg";
import { ReactComponent as MyMenuIcon } from "@/assets/myMenuIcon.svg";
import { ReactComponent as CancleButtonIcon } from "@/assets/cancleButtonIcon.svg";
import { ReactComponent as SearchButtonIcon } from "@/assets/searchButtonIcon.svg";
import { ReactComponent as MiniSearchButtonIcon } from "@/assets/miniSearchButtonIcon.svg";
import { ReactComponent as PrevButtonIcon } from "@/assets/prevButtonIcon.svg";
import { ReactComponent as NextButtonIcon } from "@/assets/nextButtonIcon.svg";

const GNB = {
  GNB: styled(BOX.FLEX_ROW_BOX)<{
    isSearchPage: boolean;
    showMiniSearchBarFlag: boolean;
  }>`
    align-items: flex-start;
    justify-content: space-between;
    position: ${(props) =>
      props.showMiniSearchBarFlag ? "fixed" : "absolute"};
    background: ${(props) =>
      props.showMiniSearchBarFlag || props.isSearchPage
        ? theme.COLOR.WHITE
        : "none"};
    top: 0;
    left: 0;
    width: 100%;
    padding: ${(props) =>
      props.showMiniSearchBarFlag ? "20px 80px" : "42px 80px"};
    box-shadow: ${(props) =>
      props.showMiniSearchBarFlag
        ? "0px 0px 4px rgba(204, 204, 204, 0.5),0px 2px 4px rgba(0, 0, 0, 0.25)"
        : "none"};
    transition: all 150ms ease;
    z-index: 999;
  `,

  Logo: styled(Logo)`
    cursor: pointer;
    font-weight: 900;
    font-size: 32px;
  `,

  SearchBarWrapper: styled(BOX.FLEX_COLUMN_CENTER_BOX)``,
};

const Menu = {
  Menu: styled.ul<{ showMiniSearchBarFlag: boolean }>`
    display: ${(props) => (props.showMiniSearchBarFlag ? "none" : "flex")};
    margin-bottom: 50px;
  `,
  MenuList: styled.li`
    cursor: pointer;
    :not(:last-child) {
      margin-right: 24px;
    }
    :hover {
      font-weight: 700;
      border-bottom: 1px solid gray;
      transition: all 0.3s ease-in-out;
    }
  `,
};

const MyPage = {
  MyPage: styled(BOX.FLEX_ROW_CENTER_BOX)`
    cursor: pointer;
    padding: 4px 0px 0px 3px;
    background: #ffffff;
    border: 1px solid #bdbdbd;
    border-radius: 30px;
  `,
  MyMenuIcon: styled(MyMenuIcon)`
    margin: 0px 5px;
  `,
  MyImage: styled.div`
    margin: 0px 5px;
  `,
  DropDown: styled.div`
    position: absolute;
    width: 200px;
    top: 100px;
    right: 80px;
    background: ${theme.COLOR.WHITE};
    box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
      0px 0px 4px rgba(51, 51, 51, 0.05);
    border-radius: 10px;
    padding: 32px;
    z-index: 1;
  `,
  DropDownList: styled.div`
    cursor: pointer;
    width: 100%;
    font-size: 1.25rem;
    margin: 18px 0px;
    :hover {
      font-weight: 700;
      transition: all 0.3s ease-in-out;
    }
  `,
  ListLine: styled.div`
    width: 100%;
    height: 1px;
    background: #c4c4c4;
  `,
};

const SearchBar = {
  SearchBarWrapper: styled(BOX.FLEX_CENTER_BOX)<{
    showMiniSearchBarFlag: boolean;
  }>`
    display: ${(props) => (props.showMiniSearchBarFlag ? "none" : "flex")};
    width: 94%;
  `,
  SearchBar: styled(BOX.FLEX_ROW_CENTER_BOX)`
    width: 900px;
    padding: 16px;
    background: ${theme.COLOR.WHITE};
    border: 1px solid #bdbdbd;
    border-radius: 60px;
  `,
  SelectBox: styled.div`
    cursor: pointer;
    position: relative;
    width: 200px;
    :not(:nth-child(4)) {
      margin-right: 24px;
      border-right: 1px solid ${theme.COLOR.GRAY5};
    }
    :first-child {
      margin-left: 24px;
    }
    :hover {
      transform: scale(1.05);
      transition: all 0.1s linear;
    }
  `,
  Title: styled.div`
    font-size: 12px;
    font-weight: 700;
    margin: 4px 0px;
  `,
  Input: styled.div<{ $input: string }>`
    color: ${(props) => {
      switch (props.$input) {
        case "날짜 입력":
        case "금액대 설정":
        case "게스트 추가":
          return theme.COLOR.GRAY3;
        default:
          return theme.COLOR.GRAY1;
      }
    }};
    font-weight: ${(props) => {
      switch (props.$input) {
        case "날짜 입력":
        case "금액대 설정":
        case "게스트 추가":
          return 400;
        default:
          return 800;
      }
    }};
  `,
  CancleButton: styled(CancleButtonIcon)<{ $cancleButtonFlag: boolean }>`
    display: ${(props) => (props.$cancleButtonFlag ? "block" : "none")};
    position: absolute;
    top: 20%;
    right: 5%;
    cursor: pointer;
  `,
  SearchButton: styled(SearchButtonIcon)`
    :hover {
      transform: scale(1.05);
      transition: all 0.1s linear;
    }
  `,
};

const MiniSearchBar = {
  MiniSearchBar: styled(BOX.FLEX_ROW_CENTER_BOX)<{
    showMiniSearchBarFlag: boolean;
  }>`
    display: ${(props) => (props.showMiniSearchBarFlag ? "flex" : "none")};
    padding: 8px;
    font-size: 14px;
    background: ${theme.COLOR.WHITE};
    border: 1px solid #bdbdbd;
    border-radius: 60px;
  `,
  SelectedInfo: styled.div`
    cursor: pointer;
    padding-right: 15.5px;
    font-weight: 700;
    :not(:nth-child(3)) {
      margin-right: 15.5px;
      border-right: 1px solid ${theme.COLOR.GRAY5};
    }
    :first-child {
      margin-left: 15.5px;
    }
    :hover {
      font-weight: 700;
      transform: scale(1.05);
      transition: all 0.1s linear;
    }
  `,
  SearchButton: styled(MiniSearchButtonIcon)`
    :hover {
      transform: scale(1.05);
      transition: all 0.1s linear;
    }
  `,
};

const CalendarModal = {
  CalendarModalWrapper: styled(BOX.FLEX_CENTER_BOX)<{ $isShow: boolean }>`
    display: ${(props) => (props.$isShow ? "flex" : "none")};
    position: absolute;
    top: 100%;
    width: 94%;
  `,
  CalendarModal: styled(BOX.FLEX_ROW_BOX)`
    position: relative;
    width: 900px;
    padding: 60px 60px 45px 60px;
    background: ${theme.COLOR.WHITE};
    border: 1px solid #bdbdbd;
    box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
      0px 0px 4px rgba(51, 51, 51, 0.05);
    border-radius: 40px;
    z-index: 999;
  `,
  PrevButton: styled(PrevButtonIcon)`
    position: absolute;
    top: 12%;
    left: 7%;
    :hover {
      transform: scale(1.25);
      transition: all 0.1s linear;
    }
    z-index: 99999;
  `,
  NextButton: styled(NextButtonIcon)`
    position: absolute;
    top: 12%;
    right: 7%;
    :hover {
      transform: scale(1.25);
      transition: all 0.1s linear;
    }
    z-index: 99999;
  `,
  CalendarTable: styled(BOX.FLEX_COLUMN_CENTER_BOX)`
    padding: 0px 27px;
    width: 400px;
  `,
  Title: styled.div`
    font-size: 1.25rem;
    font-weight: 700;
    color: ${theme.COLOR.BLACK};
    margin-bottom: 24px;
  `,
  CalendarBody: styled.div`
    width: 100%;
  `,
  CalendarRow: styled.div<{ $isDayOfWeek: boolean }>`
    display: grid;
    grid-template-columns: repeat(auto-fill, calc(100% / 7));
    color: ${(props) =>
      props.$isDayOfWeek ? theme.COLOR.GRAY3 : theme.COLOR.BLACK};
  `,
  CalendarData: styled(BOX.FLEX_CENTER_BOX)<{
    $isNotDate: boolean;
    $isSelected: boolean;
    $isBetween: boolean;
  }>`
    font-size: 14px;
    width: 48px;
    height: 48px;
    color: ${(props) =>
      !props.$isNotDate && props.$isSelected
        ? theme.COLOR.WHITE
        : theme.COLOR.GRAY1};
    background: ${(props) => {
      if (!props.$isNotDate && props.$isSelected) {
        return theme.COLOR.BLACK;
      } else if (!props.$isNotDate && props.$isBetween) {
        return theme.COLOR.GRAY6;
      } else {
        return theme.COLOR.WHITE;
      }
    }};
    border-radius: ${(props) => (props.$isSelected ? "50%" : "10px")};

    :hover {
      cursor: ${(props) => (props.$isNotDate ? "default" : "pointer")};
      border: ${(props) =>
        props.$isNotDate ? "none" : `1px solid ${theme.COLOR.BLACK}`};
      border-radius: ${(props) => (props.$isNotDate ? "none" : "50%")};
    }
  `,
  CalendarList: styled(BOX.FLEX_ROW_BOX)<{
    $position: number;
    $transition: boolean;
  }>`
    width: 99999px;
    transform: translateX(${(props) => props.$position}px);
    transition: ${(props) => (props.$transition ? "all 0.2s" : "none")};
  `,
  CalendarShowBox: styled(BOX.FLEX_ROW_BOX)`
    width: 800px;
    overflow: hidden;
  `,
};

const PriceModal = {
  PriceModalWrapper: styled(BOX.FLEX_CENTER_BOX)<{ $isShow: boolean }>`
    display: ${(props) => (props.$isShow ? "flex" : "none")};
    position: absolute;
    top: 100%;
    width: 94%;
  `,
  PriceModal: styled.div`
    width: 493px;
    height: 355px;
    padding: 60px;
    background: ${theme.COLOR.WHITE};
    border: 1px solid #bdbdbd;
    box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
      0px 0px 4px rgba(51, 51, 51, 0.05);
    border-radius: 40px;
    z-index: 999;
  `,
  Title: styled.div`
    font-weight: 700;
    margin-bottom: 16px;
  `,
  Description: styled.div`
    color: ${theme.COLOR.GRAY3};
    font-size: 14px;
    margin-top: 4px;
  `,
  RangeText: styled.div`
    font-size: 18px;
  `,
  RangeChart: styled(BOX.FLEX_ROW_BOX)`
    align-items: flex-end;
    width: 100%;
    height: 70%;
    overflow: hidden;
  `,
  RangeController: styled.div`
    position: relative;
    margin-top: 8px;
  `,
  RangeLowerController: styled.input`
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
  `,
  RangeUpperController: styled.input`
    position: absolute;
    top: 15px;
    right: -1%;
    width: 100%;
  `,
  ChartLine: styled.div<{ $isRangeOut: boolean; $height: number }>`
    height: ${(props) => `${props.$height}0%`};
    width: 100%;
    background: ${(props) =>
      props.$isRangeOut ? theme.COLOR.GRAY4 : theme.COLOR.GRAY1};
  `,
};

const PeopleModal = {
  PeopleModalWrapper: styled(BOX.FLEX_CENTER_BOX)<{ $isShow: boolean }>`
    display: ${(props) => (props.$isShow ? "flex" : "none")};
    position: absolute;
    top: 100%;
    width: 94%;
  `,
  PeopleModal: styled.div`
    width: 400px;
    padding: 36px 60px 36px 60px;
    background: ${theme.COLOR.WHITE};
    border: 1px solid #bdbdbd;
    box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
      0px 0px 4px rgba(51, 51, 51, 0.05);
    border-radius: 40px;
    z-index: 999;
  `,
  PeopleList: styled(BOX.FLEX_ROW_BOX)`
    justify-content: space-between;
    padding: 24px 0px;
    :not(:last-child) {
      border-bottom: 1px solid ${theme.COLOR.LINE};
    }
  `,
  People: styled(BOX.FLEX_COLUMN_BOX)``,
  Type: styled.div`
    font-weight: 700;
    color: ${theme.COLOR.BLACK};
    margin-bottom: 3px;
  `,
  Description: styled.div`
    font-size: 14px;
    color: ${theme.COLOR.GRAY3};
  `,
  Counter: styled(BOX.FLEX_CENTER_BOX)``,
  CountNumber: styled.span`
    font-size: 20px;
    font-weight: 700;
    color: ${theme.COLOR.GRAY1};
  `,
  PlusButton: styled.button<{ $plusButtonFlag: boolean }>`
    border: none;
    outline: none;
    background: none;
    margin-left: 10px;
    :disabled {
      opacity: 0.3;
    }
    :hover {
      transform: ${(props) => (props.$plusButtonFlag ? "scale(1.15)" : "none")};
      transition: ${(props) =>
        props.$plusButtonFlag ? "all 0.1s linear" : "none"};
    }
  `,
  MinusButton: styled.button<{ $minusButtonFlag: boolean }>`
    border: none;
    outline: none;
    background: none;
    margin-right: 10px;
    :disabled {
      opacity: 0.3;
    }
    :hover {
      transform: ${(props) =>
        props.$minusButtonFlag ? "none" : "scale(1.15)"};
      transition: ${(props) =>
        props.$minusButtonFlag ? "none" : "all 0.1s linear"};
    }
  `,
};

export {
  GNB,
  Menu,
  MyPage,
  SearchBar,
  MiniSearchBar,
  CalendarModal,
  PriceModal,
  PeopleModal,
};
