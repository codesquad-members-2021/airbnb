import './App.css'
import { RecoilRoot } from 'recoil'
import styled from 'styled-components'
import GlobalStyle from './style/GlobalStyle'
import Header from './components/header/Header'
import SearchBar from './components/searchBar/SearchBar'

function App() {
  return (
    <div className='App'>
      <RecoilRoot>
        <GlobalStyle />
        <Main>
        <Header />
        <SearchBar />
        </Main>
      </RecoilRoot>
    </div>
  )
}

const Main = styled.div`
height: 100vh;
overflow-y:hidden;
background-image: url(process.env.PUBLIC_URL + '/bg.jpg');`

export default App
