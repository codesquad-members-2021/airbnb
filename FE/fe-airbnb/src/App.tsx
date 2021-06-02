import { ThemeProvider } from 'styled-components';
import { BrowserRouter, Route, Switch } from 'react-router-dom';

import './App.css';
import theme from './theme';
import MainPage from '@components/pages/MainPage';
import ReservationPage from '@components/pages/ReservationPage';

function App() {
  return (
    <ThemeProvider theme={theme}>
      <BrowserRouter>
        <Switch>
          <Route path='/' exact>
            <MainPage />
          </Route>
          <Route path='/reservation'>
            <ReservationPage />
          </Route>
        </Switch>
      </BrowserRouter>
    </ThemeProvider>
  );
}

export default App;
