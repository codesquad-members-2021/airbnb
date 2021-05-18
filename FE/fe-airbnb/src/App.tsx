import { ThemeProvider } from 'styled-components';
import './App.css';
import DeleteButton from './components/DeleteButton';
import SearchButton from './components/SearchButton';
import UserButton from './components/UserButton';
import theme from './theme';

function App() {
  return (
    <ThemeProvider theme={theme}>
      <SearchButton size="compact"/>
      <SearchButton size="wide"/>
      <DeleteButton />
      <UserButton />
    </ThemeProvider>
  );
}

export default App;
