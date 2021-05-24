import React from "react";
import { ThemeProvider } from "styled-components";
import { Switch, Route } from "react-router-dom";
import theme from "styles/theme";
import { LandingPage, SearchResultPage } from "pages";

function App() {
  return (
    <ThemeProvider {...{ theme }}>
      <Switch>
        <Route path="/search">
          <SearchResultPage />
        </Route>
        <Route path="/">
          <LandingPage />
        </Route>
      </Switch>
    </ThemeProvider>
  );
}

export default App;
