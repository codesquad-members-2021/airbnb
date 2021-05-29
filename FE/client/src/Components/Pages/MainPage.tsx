import styled from 'styled-components';
import GNB from '@Components/GNB';
import SearchBar from '@Components/SearchBar';
import Modal from '@Components/Modal';
import airbnbMainImage from '@/Images/airbnbMain.jpg';

const MainPage = () => {
  return (
    <MainPageWrapper>
      <GNB isMain />
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
