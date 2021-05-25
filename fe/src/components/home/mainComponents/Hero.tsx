import React, { useReducer } from 'react';
import styled from 'styled-components';
import { ReservationDispatchContext, ReservationStateContext } from '../../../Contexts';
import { ReservationContext } from '../../../shared/interface';
import reservationReducer from '../../../shared/reservationReducer';
import Header from './heroComponents/Header';
import Searcher from './heroComponents/Searcher';

const initialState = {
    location: {
        id: 0,
        city: '',
    },
    checkIn: {
        year: 0,
        month: 0,
        day: 0,
    },
    checkOut: {
        year: 0,
        month: 0,
        day: 0,
    },
    fee: 0,
    people: {
        guest: 0,
        kids: 0,
    },
} as ReservationContext;

const Hero = (): React.ReactElement => {
    const [reservationState, reservationDispatch] = useReducer(reservationReducer, initialState);

    return (
        <ReservationDispatchContext.Provider value={reservationDispatch}>
            <ReservationStateContext.Provider value={reservationState}>
                <HeroSection>
                    <Header />
                    <Searcher />
                </HeroSection>
            </ReservationStateContext.Provider>
        </ReservationDispatchContext.Provider>
    );
};

export default Hero;

const HeroSection = styled.section`
    height: 640px;
    background: #ddd;
`;
