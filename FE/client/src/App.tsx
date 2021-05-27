import CssBaseline from '@material-ui/core/CssBaseline'; //https://material-ui.com/components/css-baseline/
import { RecoilRoot } from 'recoil';
import { Switch, Route } from 'react-router-dom';
import MainPage from '@Components/Pages/MainPage';
import SearchMapPage from '@Components/Pages/SearchMapPage';
import Page404 from '@Components/Pages/Page404';

const App = () => {
  return (
    <RecoilRoot>
      <CssBaseline />
      <Switch>
        <Route exact path="/searchMap" component={SearchMapPage} />
        <Route exact path="/"  component={MainPage} />
        <Route component={Page404} />
      </Switch>
    </RecoilRoot>
  );
}

export default App;
