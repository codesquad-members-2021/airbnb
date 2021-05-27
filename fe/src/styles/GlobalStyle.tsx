import React from 'react';
import { createGlobalStyle } from 'styled-components';

const GlobalStyle = createGlobalStyle`
 * {
     box-sizing: border-box;
     padding: 0;
     margin: 0;
 }

 ul, li {
     list-style: none;
 }
`;

export default GlobalStyle;
