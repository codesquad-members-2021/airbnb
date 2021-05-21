import styled from 'styled-components';
import { cssMainChildren } from '../../common/styles/CommonStyledCSS';

const MainTopBackground = () => {
  return (
    <MainTopBackgroundBlock />
  );
};

export default MainTopBackground;

// --- Styled Components ---
const MainTopBackgroundBlock = styled.div`
  ${cssMainChildren};

  height: 80vh;
  background-image: url('./images/main/background/2560.webp');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: bottom;
`;