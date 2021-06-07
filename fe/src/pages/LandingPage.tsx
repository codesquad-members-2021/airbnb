import styled from 'styled-components';

import PageHeader from '@components/Header/PageHeader';

const LandingPage = () => {
  return (
    <LandingPageWrap>
      <PageHeader />
    </LandingPageWrap>
  );
};

export default LandingPage;

const LandingPageWrap = styled.section`
  width: 100%;
  height: 2204px;
  background-image: url('./hero-img.png');
  background-repeat: no-repeat;
  background-size: contain;
`;
