import { Route } from "react-router-dom";
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

function App() {
  return (
    <RecoilRoot>
      <Route exact path="/" component={MainPage} />
      <Route path="/rooms" component={ResultPage} />
      <Route path="/login" component={LoadingPage} />
    </RecoilRoot>
  );
}

export default App;
