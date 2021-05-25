import React, { useState, useReducer, useContext } from 'react';
import styled from 'styled-components';
import Period from './Period';
import Personnel from './Personnel';
import Price from './Price';
import SearchButton from './SearchButton';
import {ResultContextProvider} from '../../Context';
import useComponentVisible from "../modal/Modal"


const SearchBar = () => {
    const {searchRef, isFocus, setIsFocus} = useComponentVisible(true);
    return (
            <ResultContextProvider>
        <SearchBarWrapper ref={searchRef} onClick={() => setIsFocus(false)}>
            <Period/>
            <Price/>
            <Personnel/>
            <SearchButton setIsFocus={setIsFocus} isFocus={isFocus}/>
        </SearchBarWrapper>
            </ResultContextProvider>
    );
}
const SearchBarWrapper = styled.div`
position: relative;
    border-radius:100px;
    background:white;
    display:flex;
    margin: 2% 15%;
    align-items: center;
`;

export default SearchBar;
