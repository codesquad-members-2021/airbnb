import styled from 'styled-components';
import Header from './Header';
import SearchBar from './SearchBar';
import { cssMainChildren } from '../../../util/styles/CommonStyledCSS';
import { ITextTopBackground } from '../../../util/reference';

const TopBackground = ({ headerTexts, searchBarTexts }: ITextTopBackground) => {
  return (
    <TopBackgroundLayout>
      <Header headerTexts={headerTexts} />
      <SearchBar searchBarTexts={searchBarTexts} />
    </TopBackgroundLayout>
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
