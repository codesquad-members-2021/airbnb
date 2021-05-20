import React from 'react';
import styled from 'styled-components';
import Period from './Period';
import Personnel from './Personnel';
import Price from './Price';
import SearchButton from './SearchButton';


const SearchBar = () => {
    return (
        <SearchBarWrapper>
            <Period/>
            <Price/>
            <Personnel/>
            <SearchButton/>
        </SearchBarWrapper>
    );
}
const SearchBarWrapper = styled.div`
    border-radius:100px;
    background:white;
    display:flex;
    /* width: 80%;
    text-align: center; */
    margin: 2% 15%;
    /* Flex: auto; */
    /* flex-direction: row; */
    /* justify-content:space-between; */
    align-items: center;
`;

export default SearchBar;
