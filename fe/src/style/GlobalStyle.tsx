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
  button{
    display: flex;
    align-items: center;
    cursor: pointer;
    justify-content: center;
    border: none;
    cursor: pointer;
  }

  .pac-container{
    border-radius: 2rem;
    border: none;
    padding: 2rem;
    margin-top: 1.5rem;
    margin-left: -3rem;
    width: 100rem;
    box-shadow:none;
    width: auto !important;
  }

 
  .pac-item{
    padding: 0.6rem 0;
    font-size: 1rem;
    cursor: pointer;
  }

  .pac-icon{
    color: red;
    font-size: 0.8rem;
  }
  .pac-item-query{
    font-size: 1.2rem;
  }
`;

export default GlobalStyle;
