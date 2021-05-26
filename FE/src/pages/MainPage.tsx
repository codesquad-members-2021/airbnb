import Main from '../components/Main';
import { MainContextProvider } from '../contexts/MainContext';

const MainPage = () => (
  <MainContextProvider>
    <Main />
  </MainContextProvider>
);

export default MainPage;