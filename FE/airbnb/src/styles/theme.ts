import { css } from "styled-components";

const color = {
  white: "#fff",
  black: "#010101",
  gray6: "#F5F5F7",
  gray5: "#E0E0E0",
  gray4: "#BDBDBD",
  gray3: "#828282",
  gray2: "#4F4F4F",
  gray1: "#333333",
  coral: "#E84C60",
  green: "#118917",
};

const fontSize = {
  base: "16px",
  s: "12px",
  m: "14px",
  l: "18px",
};

const padding = {
  base: "5rem",
};

const borderRadius = {
  s: "10px",
  m: "30px",
  l: "60px",
  modal: "40px",
};

// ================================

const flexCenter = css`
  display: flex;
  justify-content: center;
  align-items: center;
`;

const header = css`
  box-sizing: border-box;
  width: 1440px;
  height: 80px;
  padding: 0 80px;

  display: flex;
  justify-content: space-between;
  align-items: center;
  position: relative;
`;

const bigSearchBar = css`
  width: 901px;
  height: 74px;
  top: 110px;
`;

const miniSearchBar = css`
  width: 580px;
  height: 50px;
`;

const searchListItem = css`
  box-sizing: border-box;
  border-radius: ${({ theme }) => theme.borderRadius.l};
  cursor: pointer;

  display: flex;
  flex-direction: column;

  &:hover {
    background: #eee;
  }
`;

const bigSearchLI = css`
  padding: 16px 20px 16px 30px;
`;
const miniSearchLI = css`
  padding: 4px 10px;
`;

const bigSearchBtn = css`
  top: 17px;
`;
const miniSearchBtn = css`
  top: 4px;
  right: 5px;
`;

const searchTitle = css`
  font-size: 12px;
  font-weight: bold;
  margin: 5px 0 10px;
`;
const searchContent = css`
  font-weight: 300;
  font-size: 15px;
  color: "#4F4F4F";
`;

const modal = css`
  position: absolute;
  top: 100px;
  box-sizing: border-box;
  background-color: #fff;
  border-radius: ${({ theme }) => theme.borderRadius.modal};
`;

const theme = {
  color,
  fontSize,
  padding,
  flexCenter,
  borderRadius,
  searchListItem,
  searchTitle,
  searchContent,
  modal,
  header,
  bigSearchBar,
  miniSearchBar,
  bigSearchLI,
  miniSearchLI,
  bigSearchBtn,
  miniSearchBtn,
};

export default theme;
