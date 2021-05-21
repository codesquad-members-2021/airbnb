import React, { useState, useReducer, useContext } from 'react';
import styled from 'styled-components';
import Period from './Period';
import Personnel from './Personnel';
import Price from './Price';
import SearchButton from './SearchButton';
import { PostsContext } from '../mainPage/Main';


const SearchBar = () => {
    const {dispatch} = useContext(PostsContext);
    return (
        <SearchBarWrapper onClick={e => e.stopPropagation()} onFocus={()=> dispatch({category: 'search'})}>
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
