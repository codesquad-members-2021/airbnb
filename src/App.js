import { Route, Switch } from "react-router-dom";
import HomePage from "./components/home/HomePage";
import SearchPage from "./components/search/SearchPage";
import GlobalStyle from "./utils/GlobalStyles";
import Header from "./components/header/Header";
import Test from "./lib/Test";

export default function App() {
  return (
    <>
      <GlobalStyle />
      {/* <Header></Header> */}
      <Switch>
        {/* <Route path="/" component={HomePage} exact /> */}
        <Route path="/" component={Test} />
        <Route path="/search" component={SearchPage} />
      </Switch>
    </>
  );
}
