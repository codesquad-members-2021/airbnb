import React from 'react';
import styled from 'styled-components';
import Header from './heroComponents/Header';
import Searcher from './heroComponents/Searcher';

const Hero = (): React.ReactElement => {
    return (
        <HeroSection>
            <Header />
            <Searcher />
        </HeroSection>
    );
};

export default Hero;

const HeroSection = styled.section`
    height: 640px;
    background: #ddd;
`;
