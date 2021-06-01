import './App.css'
import { RecoilRoot } from 'recoil'
import GlobalStyle from './style/GlobalStyle'

import Header from './components/header/Header'
import SearchBar from './components/searchBar/SearchBar'
function App() {
  return (
    <div className='App'>
      <RecoilRoot>
        <GlobalStyle />
        <Header />
        <SearchBar />
      </RecoilRoot>
    </div>
  )
}

export default App
