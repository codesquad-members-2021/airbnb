import React from 'react';
import styled from 'styled-components';
import { FaSearch } from "react-icons/fa";

const SearchButton = () => {
    return (
        <SearchButtonWrapper>
            <FaSearch/>
        </SearchButtonWrapper>
    );
}

const SearchButtonWrapper = styled.button`
background-color: red;
border-radius: 100px;
padding: 15px;
margin:15px;
display: flex;
justify-content: space-between;
align-items: center;
color:white;
font-size:25px;
& > *:first-child {
    font-size:30px;
}
&:hover {
    background-color: #fd733d;
}
`;
const SearchTitle = styled.div``;
export default SearchButton;
