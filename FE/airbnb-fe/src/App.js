import { createGlobalStyle } from 'styled-components';

export const GlobalStyle = createGlobalStyle`
  *{
    padding:0; 
    margin:0;
    box-sizing:border-box;
  }
  body{
    font-family: 'Noto Sans KR';
  }
  
  ol, ul {
    list-style: none;
  }
`;

function App() {
  return (
    <div className="App">
      <GlobalStyle />
    </div>
  );
}

export default App;
