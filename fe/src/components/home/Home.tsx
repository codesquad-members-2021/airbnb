import React from 'react';
import styled from 'styled-components';
import Covid19Message from './Covid19Message';
import MainContents from './MainContents';

const Home = (): React.ReactElement => {
    return (
        <HomePage>
            <Covid19Message />
            <MainContents />
        </HomePage>
    );
};

export default Home;

const HomePage = styled.div`
    & div {
        border: 1px solid black;
    }
`;
