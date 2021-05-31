import styled from 'styled-components';
import Background from '../components/header/Background';
import Header from '../components/header/Header';
import background from '../assets/image/hero-img.png';

const MainPage = () => {
  return (
    <StyledMain>
      <main className='main'>
        <Header />
        <Background src={background} />
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
`;
