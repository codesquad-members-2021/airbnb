import './App.css';
import theme from './theme';
import styled, { ThemeProvider } from 'styled-components';
import MainPage from './pages/MainPage';

function App() {
  return (
    <ThemeProvider theme={theme}>
      <StyledApp>
        <MainPage />
      </StyledApp>
    </ThemeProvider>
  );
}

const StyledApp = styled.div``;

export default App;
