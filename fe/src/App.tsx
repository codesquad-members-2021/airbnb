import React from "react";

import Home from "pages/Home";
import { ThemeProvider } from "styled-components";
import { theme } from "style/theme";
import GlobalStyle from "style/GlobalStyle";

function App() {
  return (
    <ThemeProvider theme={theme}>
      <GlobalStyle />
      <Home />
    </ThemeProvider>
  );
}

export default App;
