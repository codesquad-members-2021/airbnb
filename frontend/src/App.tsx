import './App.css'
import { RecoilRoot } from 'recoil'
import GlobalStyle from './style/GlobalStyle'
import styled from 'styled-components'
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
overflow:hidden;
background-image: url(process.env.PUBLIC_URL + '/bg.jpg');`

export default App
