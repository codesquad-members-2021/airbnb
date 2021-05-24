import { BrowserRouter, Redirect, Route, Switch } from "react-router-dom";
import Main from "./Main";
import Search from "./Search";

const Router = () => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={Main} />
        <Route path="/search" component={Search} />
        <Redirect from="*" to="/" />
      </Switch>
    </BrowserRouter>
  );
};

export default Router;
