import React from "react";
import ReactDOM from "react-dom";
import { RecoilRoot } from "recoil";
import CssBaseline from "@material-ui/core/CssBaseline";
import "./index.css";
import App from "./App";

ReactDOM.render(
  <React.StrictMode>
    <RecoilRoot>
      <CssBaseline />
      <App />
    </RecoilRoot>
  </React.StrictMode>,
  document.getElementById("root")
);
