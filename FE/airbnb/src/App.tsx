import React from "react";
import { ThemeProvider } from "styled-components";
import { BrowserRouter, Switch, Route } from "react-router-dom";
import { RecoilRoot } from "recoil";
import theme from "styles/theme";
import { LandingPage, SearchResultPage } from "pages";

function App() {
  return (
    <BrowserRouter>
      <RecoilRoot>
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
      </RecoilRoot>
    </BrowserRouter>
  );
}

export default App;
