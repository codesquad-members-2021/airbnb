import Mainpage from "components/pages/MainPage";
import React from "react";
const url  =  "https://github.com/login/oauth/authorize?client_id=5064f641a3bfe7f785ab"
function App() {
  return (
    <div>
      <Mainpage link={url}/>
    </div>
  );
}

export default App;
