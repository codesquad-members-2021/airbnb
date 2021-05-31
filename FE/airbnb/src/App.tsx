import './App.css';
import theme from './theme';
import styled, { ThemeProvider } from 'styled-components';
import MainPage from './pages/MainPage';
import ReservePage from './pages/ReservePage';
import { Suspense } from 'react';

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
        {/* <MainPage /> */}
        <Suspense fallback='loading'>
          <ReservePage />
        </Suspense>
      </StyledApp>
    </ThemeProvider>
  );
}

const StyledApp = styled.div`
  width: 100%;
  height: 100%;
`;

export default App;
