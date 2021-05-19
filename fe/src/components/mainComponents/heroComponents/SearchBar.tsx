import React, { useRef, useState } from 'react';
import styled from 'styled-components';
import SearchIcon from '@material-ui/icons/Search';

const initialValue = {
    location: null,
};

const SearchBar = (): React.ReactElement => {
    // const [location, setLocation] = useState(null);

    // const currSearchingLocation = useRef();
    // const handleSearchLocation = ({ key }) => {
    //     if (key === 'Enter') {
    //         setLocation(currSearchingLocation.current.value);
    //         return;
    //     }

    //     let inputLocationValue;
    //     setTimeout(() => {
    //         inputLocationValue = currSearchingLocation.current.value;
    //         // fetch(url) 로 get 요청 보내서 밑에 추천검색어 띄워주기
    //     }, 200);
    // };

    return (
        <Bar>
            <Location>
                <NavigatingText>위치</NavigatingText>
                <InputLocation />
            </Location>
            <CheckIn>
                <NavigatingText>체크인</NavigatingText>
            </CheckIn>
            <CheckOut>
                <NavigatingText>체크아웃</NavigatingText>
            </CheckOut>
            <Price>
                <NavigatingText>금액</NavigatingText>
            </Price>
            <People>
                <NavigatingText>인원</NavigatingText>
                <SearchButton>
                    <SearchIcon />
                </SearchButton>
            </People>
        </Bar>
    );
};

export default SearchBar;

const NavigatingText = styled.p``;

const InputLocation = styled.input``;

const Bar = styled.div`
    display: flex;
    width: 700px;
`;

const Location = styled.div`
    width: 100%;
`;
const CheckIn = styled.div`
    width: 100%;
`;
const CheckOut = styled.div`
    width: 100%;
`;
const Price = styled.div`
    width: 100%;
`;
const People = styled.div`
    width: 100%;
    display: flex;
    justify-content: space-between;
`;

const SearchButton = styled.button``;
