import React from 'react'
import ReactDOM from 'react-dom'
import { BrowserRouter as Router, Switch, Route, RouteComponentProps } from 'react-router-dom'
import './index.css'
import App from './App'
import SearchResult from './components/searchResult/SearchResult'
import reportWebVitals from './reportWebVitals'

ReactDOM.render(
  <React.StrictMode>
    <Router>
      <Switch>
        <Route path='/' component={App} exact />
        <Route path='/searchResult' component={SearchResult} />
      </Switch>
    </Router>
  </React.StrictMode>,
  document.getElementById('root')
)

reportWebVitals()
