import React, { useEffect } from 'react';
import styled from 'styled-components';
import Header from './heroComponents/Header';
import SearchBar from './heroComponents/SearchBar';

interface User {
    email: string;
    name: string;
}

interface SetUserParams {
    (prev: User): User;
}

interface IProps {
    user: User;
    setUser: (state: User | SetUserParams) => void;
}

const Hero = (props: IProps): React.ReactElement => {
    const { user, setUser } = props;
    const handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
        setUser({
            ...user,
            name: event.target.value,
        });
    };
    return (
        <div>
            <input onChange={handleChange} value={user.name} />
            <Header />
            <SearchSection>
                <SearchBar />
            </SearchSection>
            <h1>{user.name}</h1>
        </div>
    );
};

export default Hero;

const SearchSection = styled.div`
    display: flex;
    justify-content: center;
`;
