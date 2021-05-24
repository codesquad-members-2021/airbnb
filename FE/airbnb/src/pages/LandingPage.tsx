import React from "react";
import styled from "styled-components";
import PrimarySection from "component/PrimarySection";

const LandingPage = () => {
  return (
    <Main>
      <PrimarySection />
    </Main>
  );
};

export default LandingPage;

const Main = styled.div`
  width: 100%;
  margin: 0 auto;
`;
