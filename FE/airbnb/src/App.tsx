import './App.css';
import theme from './theme';
import styled, { ThemeProvider } from 'styled-components';
import Main from './components/main/Main';

function App() {
  return (
    <ThemeProvider theme={theme}>
      <StyledApp>
        <Main></Main>
      </StyledApp>
    </ThemeProvider>
  );
}

const StyledApp = styled.div``;

export default App;
