import { createGlobalStyle } from 'styled-components'
const GlobalStyle = createGlobalStyle`
 html, 
 body { 
  font-family: 'Noto Sans KR', sans-serif;
  color: '#333333';
  font-weight: 400;
} 
 a { 
   text-decoration: none;
  }
 * { box-sizing: border-box; } `
export default GlobalStyle
