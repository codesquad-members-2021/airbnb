import React from 'react';
import {createContext, useContext, useState} from 'react';
import useComponentVisible from './components/modal/Modal';

const ResultContext = createContext();

export function ResultContextProvider({children}) {
    const [isFocus, setIsFocus] = useState(false);
    // console.log('전역', isComponentVisible)
    const value = {
        isFocus,
        setIsFocus,
    };
    return <ResultContext.Provider value={value}>{children}</ResultContext.Provider>
}

export function useResultContext() {
    return useContext(ResultContext);
}