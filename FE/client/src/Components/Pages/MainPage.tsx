import styled from 'styled-components';
import airbnbMainImage from '../../Images/airbnbMain.jpg';
import Header from '../GNB';
import SearchBar from '../SearchBar';
import Modal from '../Modal';

const MainPage = () => {
  return (
    <MainPageWrapper>
      <Header />
      <SearchBar />
      <Modal />
    </MainPageWrapper>
  )
}

const MainPageWrapper = styled.div`
  height: 85vh;
  background-image:url(${airbnbMainImage});
  background-size: cover;
`;

export default MainPage;
