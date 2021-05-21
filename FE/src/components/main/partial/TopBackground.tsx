import styled from 'styled-components';
import { cssMainChildren } from '../../../common/styles/CommonStyledCSS';

const TopBackground = () => {
  return (
    <StyledTopBackground />
  );
};

export default TopBackground;

// --- Styled Components ---
const StyledTopBackground = styled.div`
  ${cssMainChildren};

  height: 80vh;
  background-image: url('./images/main/background/2560.webp');
  background-size: cover;
  background-repeat: no-repeat;
  background-position: bottom;
`;