import styled from 'styled-components';
import { cssMainChildren } from '../../util/styles/CommonStyledCSS';

const TopBackground = () => {
  return (
    <TopBackgroundLayout />
  );
};

export default TopBackground;

// --- Styled Components ---
const TopBackgroundLayout = styled.div`
  ${cssMainChildren};

  height: 80vh;
  background-image: url('./images/main/background/2560.webp');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: bottom;
`;