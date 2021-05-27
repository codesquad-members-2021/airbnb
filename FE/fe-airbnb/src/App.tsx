import { ThemeProvider } from 'styled-components';
import './App.css';
import Header from '@components/header/Header'
import SearchBar from '@components/searchBar/SearchBar';
import theme from './theme';
import CalendarModal from './components/calendar/CalendarModal';

function App() {
  return (
    <ThemeProvider theme={theme}>
      <Header />
      <SearchBar />
    </ThemeProvider>
  );
}

export default App;
