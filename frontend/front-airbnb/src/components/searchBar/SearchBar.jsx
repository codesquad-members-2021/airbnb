import React, { useState } from 'react';
import styled from 'styled-components';
import Period from './Period';
import Personnel from './Personnel';
import Price from './Price';
import SearchButton from './SearchButton';


const SearchBar = () => {
    const searchToggle = { period:false, price:false, personnel:false};
    const [toggleState, setToggleState] = useState(searchToggle)
    // searchToggle.period = true;
    // const se = {...searchToggle}
    // console.log(searchToggle.period)
    // console.log(se.period)
    return (
        <SearchBarWrapper>
            <Period toggleState={toggleState} setToggleState={setToggleState}/>
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
