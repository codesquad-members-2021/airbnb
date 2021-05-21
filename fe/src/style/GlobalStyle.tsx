import { createGlobalStyle } from "styled-components";

const GlobalStyle = createGlobalStyle`
  * {
    font-family: Noto Sans KR 
  }

  li {
    display: block;
    text-align: left;
  }
  ul{
    padding: 0;
    margin: 0.5rem 0;
  }
`;

export default GlobalStyle;
