import styled from "styled-components";
import { BOX } from "@/Styles/CommonStyles";
import theme from "@/Styles/theme";
import { ReactComponent as MyMenuIcon } from "@/assets/myMenuIcon.svg";
import { ReactComponent as CancleButtonIcon } from "@/assets/cancleButtonIcon.svg";
import { ReactComponent as SearchButtonIcon } from "@/assets/searchButtonIcon.svg";
import { ReactComponent as MiniSearchButtonIcon } from "@/assets/miniSearchButtonIcon.svg";

const GNB = {
  GNB: styled(BOX.FLEX_ROW_CENTER_BOX)`
    justify-content: space-between;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    padding: 42px 80px;
  `,

  Logo: styled.div`
    cursor: pointer;
    font-weight: 900;
    font-size: 32px;
  `,
};

const Menu = {
  Menu: styled.ul`
    display: flex;
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
  SearchBarWrapper: styled(BOX.FLEX_CENTER_BOX)`
    position: absolute;
    top: 90%;
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
  Description: styled.div`
    color: ${theme.COLOR.GRAY3};
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
  MiniSearchBar: styled(BOX.FLEX_ROW_CENTER_BOX)`
    padding: 16px;
    background: ${theme.COLOR.WHITE};
    border: 1px solid #bdbdbd;
    border-radius: 60px;
  `,
  SelectedInfo: styled.div`
    cursor: pointer;
    padding-right: 15.5px;
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

export { GNB, Menu, MyPage, SearchBar, MiniSearchBar };
