import CssBaseline from '@material-ui/core/CssBaseline'; //https://material-ui.com/components/css-baseline/
import MainPage from './Components/Pages/MainPage';
import { RecoilRoot } from 'recoil';
import { Switch, Route } from 'react-router-dom';
import SearchMapPage from './Components/Pages/SearchMapPage';

const App = () => {
  return (
    <RecoilRoot>
      <CssBaseline />
      <Switch>
        <Route path="/searchMap">
          <SearchMapPage />
        </Route>
        <Route path="/">
          <MainPage />
        </Route>
      </Switch>
    </RecoilRoot>
  );
}

export default App;
