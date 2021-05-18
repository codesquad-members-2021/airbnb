import CssBaseline from '@material-ui/core/CssBaseline'; //https://material-ui.com/components/css-baseline/
import MainPage from './Components/Pages/MainPage';
import { RecoilRoot } from 'recoil';

const App = () => {
  return (
    <RecoilRoot>
      <CssBaseline />
      <MainPage />
    </RecoilRoot>
  );
}

export default App;
