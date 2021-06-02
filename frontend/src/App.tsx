import { Route, Switch } from "react-router-dom";
import MainPage from "components/pages/MainPage";
import ResultPage from "components/pages/ResultPage";
import LoadingPage from "components/pages/LoadingPage";
import {
  RecoilRoot,
  atom,
  selector,
  useRecoilState,
  useRecoilValue,
} from "recoil";
import styled from "styled-components";
function App() {
  return (
    <RecoilRoot>
      <Switch>
        <Route exact path="/" component={MainPage} />
        <Route path="/rooms" component={ResultPage} />
        <Route path="/login" component={LoadingPage} />
        <Route
          render={({ location }) => (
            <div>
              <img src="https://cdn.dribbble.com/users/252114/screenshots/3840347/mong03b.gif" />
            </div>
          )}
        />
      </Switch>
    </RecoilRoot>
  );
}

export default App;
