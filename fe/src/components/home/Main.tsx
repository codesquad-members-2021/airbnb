import React, { useState } from 'react';
import Hero from './mainComponents/Hero';
import NearbyLocation from './mainComponents/NearbyLocation';
import HouseType from './mainComponents/HouseType';
import BeingHost from './mainComponents/BeingHost';
import styled from 'styled-components';

const Main = (): React.ReactElement => {
    return (
        <MainPage>
            <Hero />
            <NearbyLocation />
            <HouseType />
            <BeingHost />
        </MainPage>
    );
};

export default Main;

const MainPage = styled.main``;
