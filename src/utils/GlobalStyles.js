import { createGlobalStyle } from "styled-components";
import reset from "styled-reset";

const GlobalStyle = createGlobalStyle`
     ${reset};
     a, a:link,a:visited ,a:active,a:hover {
               text-decoration: none;
               color: black
          };
     input {
          width: 100%;
     };
     input[type='text'] {
          border: none;
          padding: 0;
          background: none;
     };
     input[type="text"]:focus {
          outline: none;
     };
     button {
          background: none;
          border:none;
          box-shadow: none;
          border-radius: 0;
          padding: 0;
          overflow: visible;
          cursor: pointer;
     }
`;

export default GlobalStyle;
