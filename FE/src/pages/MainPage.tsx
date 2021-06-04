import Main from '../components/Main';
import { Link } from '../util/MyRouter';
import { MainContextProvider } from '../util/contexts/MainContext';

const MainPage = () => (
  <MainContextProvider>
    <Link to={'/search'}> search test </Link> {/* for test*/}
    <Main />
  </MainContextProvider>
);

export default MainPage;