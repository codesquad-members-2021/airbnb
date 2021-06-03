import { useState, useEffect, useRef } from 'react';

export default function useComponentVisible(initialIsVisible) {
    const [isComponentVisible, setIsComponentVisible] = useState(initialIsVisible);
    const [isFocus, setIsFocus] = useState(initialIsVisible);
    const ref = useRef(null);
    const searchRef = useRef(null);

    const handleClickOutside = (event) => {
        if (ref.current && !ref.current.contains(event.target)) {
            setIsComponentVisible(true);
        }
        if(searchRef.current && !searchRef.current.contains(event.target)) {
            setIsFocus(true);
        }
    };

    useEffect(() => {
        document.addEventListener('click', handleClickOutside, true);
        return () => {
            document.removeEventListener('click', handleClickOutside, true);
        };
    });

    return { searchRef, ref, isComponentVisible, setIsComponentVisible, isFocus, setIsFocus };
}