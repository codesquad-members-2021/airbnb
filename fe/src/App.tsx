import React from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import { ThemeProvider } from "styled-components";

import Home from "pages/Home";
import LogIn from "pages/LogIn";
import { theme } from "style/theme";
import GlobalStyle from "style/GlobalStyle";

function App() {
  return (
    <ThemeProvider theme={theme}>
      <GlobalStyle />
      <BrowserRouter>
        <Switch>
          <Route path="/" exact component={Home} />
          <Route path="/login"  component={LogIn} />
        </Switch>
      </BrowserRouter>
    </ThemeProvider>
  );
}

export default App;
