import './App.css';
import styled, { ThemeProvider } from 'styled-components';
import Main from './components/main/Main';
import theme from './theme';

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
