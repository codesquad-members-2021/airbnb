import './App.css';
import styled from 'styled-components';
import Covid19Message from './components/Covid19Message';
import Main from './components/Main';

function App(): React.ReactElement {
    return (
        <TotalPage>
            <Covid19Message />
            <Main />
        </TotalPage>
    );
}

export default App;

const TotalPage = styled.section`
    & div {
        border: 1px solid black;
    }
`;
