import React from 'react'
import ReactDOM from 'react-dom'
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom'
import { RecoilRoot } from 'recoil'
import GlobalStyle from './style/GlobalStyle'
import { ThemeProvider } from 'styled-components'
import { Theme } from './style/Theme'
import './index.css'
import App from './App'
import Login from './components/header/Login'
import SearchResult from './components/searchResult/SearchResult'
import reportWebVitals from './reportWebVitals'

ReactDOM.render(
  <React.StrictMode>
    <RecoilRoot>
      <ThemeProvider theme={Theme}>
      <GlobalStyle />
        <Router>
          <Switch>
            <Route path='/' component={App} exact />
            <Route
              path='/searchResult/:place/:checkIn/:checkOut/:priceMin/:priceMax/:minFeePercent/:maxFeePercent/:adult/:child/:baby'
              component={SearchResult}
            />
            <Route path='/git/auth' component={Login} />
          </Switch>
        </Router>
      </ThemeProvider>
    </RecoilRoot>
  </React.StrictMode>,
  document.getElementById('root')
)

reportWebVitals()
