import React from 'react';
import styled from 'styled-components';
import Header from './Header';
import Search from '../../Atoms/Search';

const HeroSection = () => {
  return (
    <HeroSectionDiv>
      <Header />
      <Search />
    </HeroSectionDiv>
  );
};

const HeroSectionDiv = styled.div`
  height: 640px;
  margin-bottom: 80px;
  background-image: url('./hero-img.png');
  background-position: center;
  background-size: cover;
`;

export default HeroSection;
