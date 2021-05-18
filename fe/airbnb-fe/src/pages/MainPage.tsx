import styled from 'styled-components';

import Header from 'components/Header/Header';

function MainPage() {
  return (
    <StyledMainPage>
      <section className="main">
        <Header/>
      </section>
    </StyledMainPage>
  );
}

export default MainPage;

const StyledMainPage = styled.div`
  .main {
    width: 100%;
    height: 35rem;
    background-color: yellowgreen;
  }
`;
