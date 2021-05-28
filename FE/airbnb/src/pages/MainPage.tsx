import styled from 'styled-components';
import Header from '../components/header/Header';

const MainPage = () => {
  return (
    <StyledMain>
      <main className='main'>
        <Header></Header>
        <div className='main__background'></div>
      </main>
      <div className='main__sections'></div>
    </StyledMain>
  );
};

export default MainPage;

const StyledMain = styled.div`
  height: 100%;
  width: 100%;
  .main {
    height: 100%;
    width: 100%;
  }
  .main__sections {
    padding: 0 5rem;
  }
  .main__background {
    position: absolute;
    top: 0;
    z-index: -1;
    width: 100%;
    height: 100%;
    background: url('./image/hero-img.png');
    background-repeat: no-repeat;
    background-size: contain;
  }
`;
