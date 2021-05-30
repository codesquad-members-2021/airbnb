import { createGlobalStyle, ThemeProvider } from 'styled-components';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import theme from './components/utils/theme';
import Home from './components/Home';
import Reservation from './components/Reservation';
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
  button{
    border:none;
  }
`;

function App() {
  return (
    <Router>
      <Switch>
        <ThemeProvider theme={theme}>
          <GlobalStyle />
          <Route exact path="/" component={Home} />
          <Route path="/reservation" component={Reservation} />
        </ThemeProvider>
      </Switch>
    </Router>
  );
}

export default App;
