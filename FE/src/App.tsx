import { ThemeProvider } from 'styled-components';
import { BrowserRouter, Switch, Route } from 'react-router-dom';

import AppStyle from './common/styles/AppStyle';
import theme from './common/styles/theme/theme';

import MainPage from './pages/MainPage';

const App = () => {
  return (
    <ThemeProvider theme={theme}>
      <AppStyle />

      <BrowserRouter>
        <Switch>
          <Route path={'/'} exact component={MainPage} />
        </Switch>
      </BrowserRouter>

    </ThemeProvider>
  );
};

export default App;
