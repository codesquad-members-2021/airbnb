import React, { Suspense } from 'react';
import CssBaseline from '@material-ui/core/CssBaseline'; //https://material-ui.com/components/css-baseline/
import { RecoilRoot } from 'recoil';
import { Switch, Route } from 'react-router-dom';
import MainPage from '@Components/Pages/MainPage';

const SearchMapPageLazy = React.lazy(() => import('@Components/Pages/SearchMapPage'));
const Page404Lazy = React.lazy(() => import('@Components/Pages/Page404'));

const App = () => {
  return (
    <RecoilRoot>
      <CssBaseline />
      <Switch>
        <Route exact path="/searchMap">
          <Suspense fallback="loading...">
            <SearchMapPageLazy />
          </Suspense>
        </Route>
        
        <Route exact path="/" component={MainPage} />

        <Route>
          <Suspense fallback="loading...">
            <Page404Lazy />
          </Suspense>
        </Route>
      </Switch>
    </RecoilRoot>
  );
}

export default App;
