import React, { useEffect } from 'react';
import styled from 'styled-components';
import Header from './heroComponents/Header';
import Searcher from './heroComponents/Searcher';

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

const Hero = (): React.ReactElement => {
    // const { user, setUser } = props;
    // const handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    //     setUser({
    //         ...user,
    //         name: event.target.value,
    //     });
    // };
    return (
        <HeroSection>
            <Header />
            <Searcher />
            {/* <h1>{user.name}</h1> */}
        </HeroSection>
    );
};

export default Hero;

const HeroSection = styled.section`
    height: 640px;
    background: #ddd;
`;
