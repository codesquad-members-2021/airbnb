import { Route, Switch } from "react-router-dom";
import HomePage from "./components/home/HomePage";
import SearchPage from "./components/search/SearchPage";
import GlobalStyle from "./utils/GlobalStyles";

function App() {
  return (
    <>
      <GlobalStyle />
      <Switch>
        <Route path="/" component={HomePage} exact />
        <Route path="/search" component={SearchPage} />
      </Switch>
    </>
  );
}

export default App;
