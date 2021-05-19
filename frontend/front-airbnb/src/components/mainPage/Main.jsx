import React from 'react';
import styled from 'styled-components';
import Header from './header/Header';
import SearchBar from '../searchBar/SearchBar';
import SearchButton from '../searchBar/SearchButton';
import CloseButton from '../searchBar/CloseButton';

const Main = () => {
    return (
        <MainWrapper>
            <Header/>
            <SearchBar/>
            <SearchButton/>
            <CloseButton/>
        </MainWrapper>
    );
}

const MainWrapper = styled.div`
    width:100%;
    height:90vh;
    border: 0;
    padding: 80px; 
    background-image: url("https://s3-alpha-sig.figma.com/img/7197/3c13/5882a37ecf9a1d0a40a9d0ab7837c66f?Expires=1622419200&Signature=hft41Itng7tL0EiyVP8x4Yxc12ott0ecpkGtfXiluXK9zToDrwUnocASpV6FQqL1gzcxJMCrzh2gtaXdP-Y3zGFXE4ktwFcD0uMcqV8c6ZkDSaWvnn-xyinB22RtPUfiDEl7El~WrWnNTRbKbr3nWmXHveth0sP4SJU9Ej1Tamr6nIUb1nqj2EapB4SaQs26-urujEeZLTmOjfREK2~G4HP1AVJ6IcEErqLntbPU4X1jEhn-Zvr5KtdVJyQ91Xp6OI6S6WfLMGArZALMDxfVmzOfHRXsuBHHvaQ-3es4~Rlc7X~Hj62eSj1vCtBhpfMqGizzFjd6Shl7~T~G9jEMEg__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA");
    min-height: 100%;
    background-position: center;
    background-size: cover;
`;

export default Main;
