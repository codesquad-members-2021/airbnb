import React from "react";
import { Route } from "react-router-dom";
import MainPage from "components/pages/MainPage.tsx";
import ResultPage from "components/pages/ResultPage.tsx";
import LoadingPage from "components/pages/LoadingPage.tsx";

function App() {
  return (
    <>
      <Route path="/" exact component={MainPage} />
      <Route path="/search" component={ResultPage} />
      <Route path="/login" component={LoadingPage} />
    </>
  );
}

export default App;
