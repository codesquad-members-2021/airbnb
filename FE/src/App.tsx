import { ThemeProvider } from 'styled-components';
// import { BrowserRouter, Switch, Route } from 'react-router-dom';
import { BrowserRouter, Switch, Route } from './util/MyRouter';

import AppStyle from './util/styles/AppStyle';
import theme from './util/styles/theme/theme';

import MainPage from './pages/MainPage';
import SearchPage from './pages/SearchPage';

const App = () => {
  return (
    <ThemeProvider theme={theme}>
      <AppStyle />

      <BrowserRouter>
        <Switch>
          <Route path={'/'} exact component={MainPage} />
          <Route path={'/search'} component={SearchPage} />
        </Switch>
      </BrowserRouter>

    </ThemeProvider>
  );
};

export default App;
