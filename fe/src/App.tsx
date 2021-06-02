import styled, { ThemeProvider } from 'styled-components';
import { BrowserRouter, Switch, Route } from 'react-router-dom';

import LandingPage from '@pages/LandingPage';
import SearchResult from '@pages/SearchResult';
import theme from '@styles/theme';
import { Suspense } from 'react';

const App = () => {
  return (
    <ThemeProvider {...{ theme }}>
      <AppContainer>
        <BrowserRouter>
          <Switch>
            <Route path="/" exact>
              <LandingPage />
            </Route>
            <Suspense fallback={<div>loading...</div>}>
              <Route path="/:search">
                <SearchResult />
              </Route>
            </Suspense>
          </Switch>
        </BrowserRouter>
      </AppContainer>
    </ThemeProvider>
  );
};

export default App;

const AppContainer = styled.div`
  margin: 0 auto;
  min-width: 1440px;
  background: ${({ theme }) => theme.color.white};
`;
