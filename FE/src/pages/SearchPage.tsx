import styled from 'styled-components';

import {ResponsiveFluid} from '../components/common/ResponsiveFluid';

function SearchPage() {
  return (
    <SearchPageLayout>
      
      {/* for test */}
      <SearchPageCardsSection />
      <SearchPageMapSection />
      {/* for test */}

    </SearchPageLayout>
  );
}

const SearchPageLayout = styled(ResponsiveFluid)`
  
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

const SearchPageMapSection = styled.section`
  width: 100%;
  background-color: red;
  height: 100vh;
`

export default SearchPage;