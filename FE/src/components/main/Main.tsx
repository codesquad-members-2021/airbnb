import styled from 'styled-components';

import TopBackground from './partial/TopBackground';
import Nearby from './partial/Nearby';
import RoomsType from './partial/RoomsType';
import ContentInfo from './partial/ContentInfo';

const Main = () => {
  return (
    <StyledMain>
      <TopBackground />
      <Nearby />
      <RoomsType />
      <ContentInfo />
    </StyledMain>
  );
};

export default Main;

// --- Styled Components ---
const StyledMain = styled.div``;
