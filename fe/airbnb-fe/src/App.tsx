import './App.css';
import { RecoilRoot } from 'recoil';

import MainPage from './pages/MainPage';

function App() {
  return (
    <RecoilRoot>
      <div className="App">
        <MainPage/>
      </div>
    </RecoilRoot>
  ); 
}

export default App;
