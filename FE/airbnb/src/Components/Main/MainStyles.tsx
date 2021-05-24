import styled from "styled-components";
import { BOX } from "@/Styles/CommonStyles";
import theme from "@/Styles/theme";

const Main = {
  Main: styled.div`
    position: relative;
  `,

  HiroImage: styled.img`
    width: 100%;
    height: 800px;
  `,
};

const Cities = {
  Cities: styled.div`
    padding: 80px 80px 0px 80px;
  `,
  Title: styled.div`
    font-size: 1.75rem;
    font-weight: 700;
    margin-bottom: 34px;
  `,
  CityCardGrid: styled.div`
    display: grid;
    grid-template-columns: repeat(auto-fill, 25%);
    grid-row-gap: 16px;
    justify-items: start;
  `,
  CityCard: styled(BOX.FLEX_CENTER_BOX)`
    cursor: pointer;
  `,
  CityImage: styled.img`
    width: 80px;
    height: 80px;
    margin-right: 16px;
    border-radius: 10px;
  `,
  CityName: styled.div`
    font-size: 18px;
    margin: 8px 0px;
  `,
  CityDistance: styled.div`
    font-size: 18px;
    margin: 8px 0px;
  `,
};

const Accomodations = {
  Accomodations: styled.div`
    padding: 80px 80px 0px 80px;
  `,
  Title: styled.div`
    font-size: 1.75rem;
    font-weight: 700;
    margin-bottom: 34px;
  `,
  AccomodationCardGrid: styled.div`
    display: grid;
    grid-template-columns: repeat(auto-fill, 25%);
    justify-items: start;
  `,
  AccomodationCard: styled(BOX.FLEX_COLUMN_BOX)`
    cursor: pointer;
  `,
  CardCategory: styled.div`
    font-size: 20px;
  `,
  CardImage: styled.img`
    width: 308px;
    height: 308px;
    margin-bottom: 16px;
    border-radius: 10px;
  `,
};

const Footer = {
  Footer: styled.div`
    margin-top: 80px;
    padding: 80px 80px 0px 80px;
    background: ${theme.COLOR.GRAY6};
  `,
  FooterBottom: styled.div`
    border-top: 1px solid ${theme.COLOR.GRAY5};
    padding: 32px 0px;
  `,
  Divider: styled.span`
    margin: 0px 16px;
  `,
  Title: styled.div`
    font-weight: 700;
    margin-bottom: 16px;
  `,
  List: styled.div`
    cursor: pointer;
    :not(:last-child) {
      margin-bottom: 16px;
    }
  `,
  FooterCardWrapper: styled(BOX.FLEX_ROW_BOX)`
    display: grid;
    grid-template-columns: repeat(auto-fill, 25%);
    justify-items: start;
    margin-bottom: 48px;
  `,
  FooterCard: styled.div``,
};

export { Main, Cities, Accomodations, Footer };
