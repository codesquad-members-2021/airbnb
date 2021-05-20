import { BrowserRouter as Router, Switch, Route, RouteComponentProps } from 'react-router-dom';
import './App.css';
import GlobalStyle from './style/GlobalStyle'
import { ThemeProvider } from 'styled-components'
import { Theme } from './style/Theme'
import Header from './components/header/Header'
import SearchBar from './components/searchBar/SearchBar'
function App() {
  return (
    <div className="App">
      <ThemeProvider theme={Theme}>
        <GlobalStyle/>
        <Header/>
        <SearchBar/>
      </ThemeProvider>
    </div>
  );
}

export default App;
