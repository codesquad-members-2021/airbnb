import './App.css';
import theme from './theme';
import styled, { ThemeProvider } from 'styled-components';
import MainPage from './pages/MainPage';
import ReservePage from './pages/ReservePage';
import { Suspense } from 'react';
import { BrowserRouter as Router, Route, Link } from 'react-router-dom';

declare global {
  interface Window {
    kakao: any;
  }
}

function App() {
  console.log('app');
  return (
    <ThemeProvider theme={theme}>
      <StyledApp>
        <Router>
          <Route exact={true} path='/'>
            <MainPage />
          </Route>
          <Route path='/reserve'>
            <Suspense fallback='loading'>
              <ReservePage />
            </Suspense>
          </Route>
        </Router>
      </StyledApp>
    </ThemeProvider>
  );
}

const StyledApp = styled.div`
  width: 100%;
  height: 100%;
`;

export default App;
