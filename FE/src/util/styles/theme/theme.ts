import { DefaultTheme } from 'styled-components';

// index.css
// html { font-size: 10px; }
// font-size: 1rem 1.2rem; 1.4rem;
// var(--fontSizeS: font-size: 12px)


const theme: DefaultTheme = {
  fontFamily: 'Noto Sans KR',
  fontWeight: {
    normal: '400',
    bold: '700',
    bold2: '900',
  },
  fontSize: {
    S: '12px',
    M: '14px',
    L: '16px',
    XL: '18px',
    XXL: '20px',
    MAP_PRICE: '15px', // 지도 상에 있는 금액 폰트 사이즈
    SUBJECT: '32px', // 로고나 메인의 각 구역의 제목들
  },
  colors: {
    white: '#FFF',
    skyblue: "#0AC9FF",
    black1: '#010101',
    black2: '#181818',
    gray1: '#333',
    gray2: '#4F4F4F',
    gray3: '#828282',
    gray4: '#BDBDBD',
    gray5: '#E0E0E0',
    gray6: '#F5F5F7',
    primary: '#E84C60',
    primaryHover: '#e31b60',
    secondary: '#118917',
  },
};


export default theme;
