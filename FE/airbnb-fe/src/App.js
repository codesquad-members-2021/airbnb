import { createGlobalStyle, ThemeProvider } from 'styled-components';
import theme from './components/utils/theme';
import Home from './components/Home';
export const GlobalStyle = createGlobalStyle`
  *{
    padding:0; 
    margin:0;
    box-sizing:border-box;
  }
  body{
    font-family: 'Noto Sans KR';
  }
  
  ol, ul {
    list-style: none;
  }
`;

function App() {
  return (
    <div className="App">
      <ThemeProvider theme={theme}>
        <GlobalStyle />
        <Home />
      </ThemeProvider>
    </div>
  );
}

export default App;
