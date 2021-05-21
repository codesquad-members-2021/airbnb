import React, { useState, useReducer } from 'react';
import styled from 'styled-components';
import Period from './Period';
import Personnel from './Personnel';
import Price from './Price';
import SearchButton from './SearchButton';

const changeModal = (toggleState, action) => {
    const newToggleState = {...toggleState}
    switch(action.category) {
        case 'period':
            newToggleState.period = !toggleState.period;
            return newToggleState;
        case 'price':
            newToggleState.price = !toggleState.price;
            return newToggleState;
        case 'personnel':
            newToggleState.personnel = !toggleState.personnel;
            return newToggleState;
        default:
            throw new Error();
    }
}
const searchToggle = { period:false, price:false, personnel:false};
export const PostsContext = React.createContext();
const SearchBar = () => {

    const [toggleState, dispatch] = useReducer(changeModal, searchToggle)
    return (
        <PostsContext.Provider value={{toggleState, dispatch}}>
        <SearchBarWrapper>
            <Period/>
            <Price/>
            <Personnel/>
            <SearchButton/>
        </SearchBarWrapper>
        </PostsContext.Provider>
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
