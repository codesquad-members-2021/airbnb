import { css } from 'styled-components';

const color = {
  white: '#fff',
  black: '#010101',
  gray6: '#F5F5F7',
  gray5: '#E0E0E0',
  gray4: '#BDBDBD',
  gray3: '#828282',
  gray2: '#4F4F4F',
  gray1: '#333333',
  coral: '#E84C60',
  green: '#118917',
};

const fontSize = {
  base: '16px',
  s: '12px',
  m: '14px',
  l: '18px',
};

const padding = {
  base: '5rem',
};

const borderRadius = {
  s: '30px',
  m: '60px',
  calendar: '40px',
};

const flexCenter = css`
  display: flex;
  justify-content: center;
  align-items: center;
`;

const fontWeight = {
  base: 700,
  bold: 'bold',
};

const theme = {
  color,
  fontSize,
  padding,
  flexCenter,
  fontWeight,
  borderRadius,
};

export default theme;
