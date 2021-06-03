import styled from "styled-components";
import { BOX } from "@/Styles/CommonStyles";
import theme from "@/Styles/theme";
import { ReactComponent as WishListIcon } from "@/assets/wishListIcon.svg";

export const SearchBackground = styled.div<{ searchBackgroundFlag: boolean }>`
  display: ${(props) => (props.searchBackgroundFlag ? "block" : "none")};
  position: absolute;
  top: 0;
  left: 0;
  background: rgba(0, 0, 0, 0.25);
  opacity: 0.75;
  width: 100%;
  height: 117%;
  z-index: 1;
`;

export const Search = {
  Search: styled(BOX.FLEX_ROW_BOX)`
    position: absolute;
    top: 90px;
    left: 0;
    width: 100%;
    height: 100%;
  `,
};

export const Accomodation = {
  Accomodation: styled.div`
    width: 100%;
    height: 100%;
    padding: 32px 24px 0px 24px;
    border-right: 1px solid ${theme.COLOR.GRAY5};
  `,
  SelectedInfo: styled.div`
    font-size: 12px;
    margin-bottom: 16px;
  `,
  Title: styled.div`
    font-size: 24px;
    font-weight: 700;
    margin-bottom: 8px;
  `,
  AccomodationCardsScrollBox: styled.div`
    height: 100%;
    overflow: auto;
    ::-webkit-scrollbar {
      display: none;
    }
  `,
  AccomodationCard: styled(BOX.FLEX_ROW_BOX)`
    cursor: pointer;
    padding: 24px 0px;
    :not(:last-child) {
      border-bottom: 1px solid ${theme.COLOR.GRAY5};
    }
  `,
  Image: styled.img`
    width: 100%;
    height: 250px;
    border-radius: 10px;
    margin-right: 24px;
  `,
  AccomodationInfo: styled(BOX.FLEX_COLUMN_BOX)`
    position: relative;
    font-size: 12px;
    justify-content: space-between;
    width: 100%;
    height: 250px;
  `,
  InfoTop: styled.div``,
  InfoBottom: styled(BOX.FLEX_ROW_BOX)`
    align-items: flex-end;
    justify-content: space-between;
  `,
  AccomodationTitle: styled.div`
    font-size: 18px;
    font-weight: 700;
    margin-bottom: 12px;
    width: 90%;
  `,
  Detail: styled.div`
    color: ${theme.COLOR.GRAY3};
  `,
  Grade: styled.span`
    margin-right: 8px;
  `,
  Review: styled.span`
    color: ${theme.COLOR.GRAY3};
  `,
  PriceWrapper: styled(BOX.FLEX_COLUMN_BOX)`
    align-items: flex-end;
  `,
  Price: styled.div`
    font-size: 14px;
    margin-bottom: 5px;
    span {
      font-weight: 700;
    }
  `,
  TotalPrice: styled.div`
    color: ${theme.COLOR.GRAY3};
  `,
  WishListButton: styled(WishListIcon)<{ $isSelectedRoom: boolean }>`
    fill: ${(props) =>
      props.$isSelectedRoom ? theme.COLOR.SEARCH_BUTTON : "none"};
    position: absolute;
    top: 0;
    right: 0;
  `,
};

export const Map = {
  Map: styled.div`
    width: 100%;
    height: 100%;
  `,
  Marker: styled.div`
    cursor: pointer;
  `,
};
