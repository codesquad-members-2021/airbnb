import React, { useState } from 'react';
import Hero from './mainComponents/Hero';
import NearbyLocation from './mainComponents/NearbyLocation';
import HouseType from './mainComponents/HouseType';
import BeingHost from './mainComponents/BeingHost';

interface User {
    email: string;
    name: string;
}

const Main = (): React.ReactElement => {
    // const [user, setUser] = useState<User>({
    //     email: '',
    //     name: '',
    // });
    return (
        <>
            <Hero />
            <NearbyLocation />
            <HouseType />
            <BeingHost />
        </>
    );
};

export default Main;
