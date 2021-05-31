import React, { useState, useReducer, useContext } from 'react';
import styled from 'styled-components';
import Period from './Period';
import Personnel from './Personnel';
import Price from './Price';
import SearchButton from './SearchButton';
import {ResultContextProvider} from '../../Context';
import useComponentVisible from "../modal/Modal"

export const PostsContext = React.createContext();
const SearchBar = () => {
    const periodData = [
        {
            id: 1,
            name: '체크인',
            input: '날짜입력'
        },
        {
            id: 2,
            name: '체크아웃',
            input: '날짜입력'
        },
    ]
    const [periodInfo, setPeriodInfo] = useState(periodData);
    const personelData = [
        {
            id: 1,
            name: '인원',
            input: ['게스트 추가']
        },
    ];
    const [personnelInfo, setPersonnelInfo] = useState(personelData);
    const {searchRef, isFocus, setIsFocus} = useComponentVisible(true);
    return (
        <PostsContext.Provider value={{periodInfo, setPeriodInfo, personnelInfo, setPersonnelInfo}}>
        <SearchBarWrapper ref={searchRef} onClick={() => setIsFocus(false)}>
            <Period/>
            <Price/>
            <Personnel/>
            <SearchButton setIsFocus={setIsFocus} isFocus={isFocus}/>
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
