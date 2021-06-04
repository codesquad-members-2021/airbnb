import { createGlobalStyle, ThemeProvider } from 'styled-components';
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom';
import theme from './components/utils/theme';
import Home from './components/Home';
import Reservation from './components/Reservation';
import './index.css';
import Callback from './components/Callback';

export const GlobalStyle = createGlobalStyle`
  *{
    padding:0; 
    margin:0;
    box-sizing:border-box;
  }
  body{
    font-family: 'Noto Sans KR';
  }
  a{
    text-decoration:none;
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
          <Route
            //http://3.35.226.74/airbnb/?location=seoul&checkin=2021-05-28&checkout=2021-06-02&adults=2&children=1&infants=1

            path="/reservation/:location/:checkIn/:checkOut/:adults/:children/:infants/:minPrice/:maxPrice"
            component={Reservation}
          />
          <Route path="/callback" component={Callback} />
        </ThemeProvider>
      </Switch>
    </Router>
  );
}

export default App;
