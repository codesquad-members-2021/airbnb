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
    height: 110%;
  `,
  Marker: styled.div`
    cursor: pointer;
  `,
};

export const AccomodationModal = {
  AccomodationModalBackground: styled.div<{ IsShow: boolean }>`
    display: ${(props) => (props.IsShow ? "block" : "none")};
    position: absolute;
    top: -10%;
    left: 0;
    background: rgba(0, 0, 0, 0.25);
    opacity: 0.75;
    width: 100%;
    height: 120%;
    z-index: 9999;
  `,
  AccomodationModal: styled.div<{ IsShow: boolean }>`
    display: ${(props) => (props.IsShow ? "block" : "none")};
    position: absolute;
    top: 0%;
    left: 40.5%;
    width: 400px;
    background: ${theme.COLOR.WHITE};
    box-shadow: 0px 4px 10px rgba(51, 51, 51, 0.1),
      0px 0px 4px rgba(51, 51, 51, 0.05);
    border-radius: 10px;
    padding: 24px;
    z-index: 99999;
  `,
  Image: styled.img`
    width: 100%;
    height: 250px;
    border-radius: 10px;
    margin-bottom: 8px;
  `,
  MainInfoWrapper: styled.div`
    padding: 16px 0px;
    margin-bottom: 8px;
    border-bottom: 1px solid ${theme.COLOR.GRAY5};
  `,
  Title: styled.div`
    font-size: 18px;
    font-weight: 700;
    margin-bottom: 16px;
  `,
  Grade: styled.span`
    font-size: 12px;
    margin-right: 8px;
  `,
  Review: styled.span`
    font-size: 12px;
    color: ${theme.COLOR.GRAY3};
  `,
  HostWrapper: styled(BOX.FLEX_ROW_CENTER_BOX)`
    justify-content: space-between;
    padding: 16px 0px;
    margin-bottom: 8px;
    border-bottom: 1px solid ${theme.COLOR.GRAY5};
  `,
  HostId: styled.div`
    font-size: 18px;
  `,
  HostImage: styled.img`
    width: 50px;
    height: 50px;
    border-radius: 50%;
  `,
  SelectedInfoWrapper: styled.div`
    padding: 16px 0px;
    margin-bottom: 8px;
    border-bottom: 1px solid ${theme.COLOR.GRAY5};
  `,
  SelectedInfoPrice: styled.div`
    font-size: 14px;
    span {
      font-size: 20px;
      font-weight: 700;
    }
    margin-bottom: 16px;
  `,
  SelectedInfoBox: styled.div`
    border-radius: 10px;
    border: 1px solid ${theme.COLOR.GRAY4};
    cursor: pointer;
    margin-bottom: 16px;
  `,
  DateWrapper: styled(BOX.FLEX_ROW_CENTER_BOX)``,
  CheckIn: styled.div`
    width: 100%;
    padding: 12px;
    border-right: 1px solid ${theme.COLOR.GRAY4};
  `,
  CheckOut: styled.div`
    width: 100%;
    padding: 12px;
  `,
  People: styled.div`
    width: 100%;
    padding: 12px;
    border-top: 1px solid ${theme.COLOR.GRAY4};
  `,
  SelectedInfoTitle: styled.div`
    font-size: 12px;
    font-weight: 700;
    margin-bottom: 3px;
  `,
  SelectedInfoInput: styled.div`
    font-size: 14px;
    color: ${theme.COLOR.GRAY2};
  `,
  ReservationButton: styled.button`
    border: none;
    outline: none;
    font-size: 16px;
    font-weight: 700;
    width: 100%;
    padding: 16px;
    background: ${theme.COLOR.GRAY1};
    border-radius: 10px;
    color: ${theme.COLOR.WHITE};
    :hover {
      transform: scale(1.01);
    }
  `,
  PriceWrapper: styled.div`
    padding: 16px 0px;
    margin-bottom: 16px;
    border-bottom: 1px solid ${theme.COLOR.GRAY5};
  `,
  PriceRow: styled(BOX.FLEX_ROW_CENTER_BOX)<{ isTotal: boolean }>`
    justify-content: space-between;
    font-weight: ${(props) => (props.isTotal ? "bold" : "normal")};
    margin-bottom: 10px;
  `,
  PriceDescription: styled.div`
    text-decoration-line: underline;
  `,
  Price: styled.div<{ isDiscount: boolean }>`
    color: ${(props) =>
      props.isDiscount ? theme.COLOR.DISCOUNT : theme.COLOR.GRAY1};
  `,
};
