import styled from 'styled-components';
import Header from '../components/header/Header';

const MainPage = () => {
  return (
    <StyledMain>
      <main className='main'>
        <Header></Header>
        <div className='main-background'></div>
      </main>
      <div className='main-sections'></div>
    </StyledMain>
  );
};

export default MainPage;

const StyledMain = styled.div`
  .main-sections {
    padding: 0 5rem;
  }
`;
