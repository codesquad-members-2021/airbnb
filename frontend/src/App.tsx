import './App.css';
import GlobalStyle from './style/GlobalStyle'
import Header from './components/header/Header'
import { ThemeProvider } from 'styled-components'
import { Theme } from './style/Theme'
function App() {
  return (
    <div className="App">
      <ThemeProvider theme={Theme}>
        <GlobalStyle/>
        <Header/>
      </ThemeProvider>
    </div>
  );
}

export default App;
