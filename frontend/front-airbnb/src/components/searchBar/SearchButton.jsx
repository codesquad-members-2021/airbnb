import React, {useContext, useEffect} from 'react';
import styled from 'styled-components';
import { FaSearch } from "react-icons/fa";



const SearchButton = ({isFocus}) => {
    return (
            <SearchBtn>
            <FaSearch/>
            { !isFocus && <SearchTitle>검색</SearchTitle>}
            </SearchBtn>
    );
}

const SearchButtonWrapper = styled.div`

`;

const SearchBtn = styled.button`
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
const SearchTitle = styled.div`
margin-left: 5px;
font-size:20px;
font-weight: 800;
`;
export default SearchButton;
