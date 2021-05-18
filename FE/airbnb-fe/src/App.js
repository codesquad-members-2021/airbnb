import { createGlobalStyle, ThemeProvider } from 'styled-components';
import theme from './components/utils/theme';
import Home from './components/Home';
import './index.css';

export const GlobalStyle = createGlobalStyle`
  *{
    padding:0; 
    margin:0;
    box-sizing:border-box;
  }
  body{
    font-family: 'Noto Sans KR';
  }
  
  ol, ul, li {
    list-style: none;
  }
`;

function App() {
  return (
    <ThemeProvider theme={theme}>
      <div className="App">
        <GlobalStyle />
        <Home />
      </div>
    </ThemeProvider>
  );
}

export default App;
