import React from 'react';
import styled from 'styled-components';
import { mockupAccomodationData } from '../../data/searchAccomodation.js';
import AccomodationList from './accomodationComponents/AccomodationList';

const Accomodation = (): React.ReactElement => {
    return (
        <AccomodationSection>
            <AccomodationList rooms={mockupAccomodationData.rooms} />
            <div>Map</div>
        </AccomodationSection>
    );
};

export default Accomodation;

const AccomodationSection = styled.section`
    display: flex;
    & div {
        width: 100%;
    }
`;
