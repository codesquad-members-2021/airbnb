import { Route, Switch } from "react-router-dom";
import HomePage from "./components/home/HomePage";
import SearchPage from "./components/search/SearchPage";
import GlobalStyle from "./utils/GlobalStyles";
import Header from "./components/header/Header";

export default function App() {
  return (
    <>
      <GlobalStyle />
      <Header></Header>
      <HomePage></HomePage>
      {/* <Switch>
        <Route path="/" component={HomePage} exact />
        <Route path="/search" component={SearchPage} />
      </Switch> */}
    </>
  );
}
