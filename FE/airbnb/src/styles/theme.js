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
  s: "30px",
  m: "60px",
  calendar: "40px",
};

// ================================

const flexCenter = css`
  display: flex;
  justify-content: center;
  align-items: center;
`;

const searchListItem = css`
  box-sizing: border-box;
  height: 76px;
  padding: 16px 20px 16px 30px;
  border-radius: ${({ theme }) => theme.borderRadius.m};
  cursor: pointer;

  display: flex;
  flex-direction: column;

  &:hover {
    background: #eee;
  }
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

const theme = {
  color,
  fontSize,
  padding,
  flexCenter,
  borderRadius,
  searchListItem,
  searchTitle,
  searchContent,
};

export default theme;
