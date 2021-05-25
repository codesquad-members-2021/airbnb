import styled from 'styled-components';

import { ResponsiveFluid } from '../components/common/ResponsiveFluid';
import Map from '../components/Map/Map';

function SearchPage() {
  return (
    <SearchPageLayout>
      
      {/* for test */}
      <SearchPageCardsSection />
      <Map />
      {/* for test */}

    </SearchPageLayout>
  );
}

const SearchPageLayout = styled(ResponsiveFluid)`
  margin: auto;
`;

const SearchPageCardsSection = styled.section`
  width: 100%;
  padding: 0 24px;
  box-sizing: border-box;

  display:flex;
  flex-direction: column;

  /* for test  */
  background-color: blue;
  height: 100vh;
`

export default SearchPage;