import React from "react";
import styled from "styled-components";
import Header from "./heroComponents/Header";
import SearchBar from "./heroComponents/SearchBar";

const Hero = (props) => {
  return (
    <HeroPage>
      <Header />
      <SearchSection>
        <SearchBar />
      </SearchSection>
    </HeroPage>
  );
};

export default Hero;

const HeroPage = styled.div`
  display: flex;
  flex-direction: column;
  background: #ddd;
  height: 600px;
`;

const SearchSection = styled.div`
  display: flex;
  justify-content: center;
`;
