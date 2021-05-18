import Header from './Header';
import styled from 'styled-components';

const Main = () => {
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

const StyledMain = styled.div`
  .main-sections {
    padding: 0 5rem;
  }
`;

export default Main;
