import React, { useState, useReducer } from 'react';
import styled from 'styled-components';
import Period from './Period';
import Personnel from './Personnel';
import Price from './Price';
import SearchButton from './SearchButton';


const SearchBar = () => {

    return (
        <SearchBarWrapper onClick={e => e.stopPropagation()}>
            <Period/>
            <Price/>
            <Personnel/>
            <SearchButton/>
        </SearchBarWrapper>
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
