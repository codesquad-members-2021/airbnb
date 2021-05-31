import React, { useReducer } from 'react';
import styled from 'styled-components';
import { ReservationDispatchContext, ReservationStateContext } from '../../../Contexts';
import { ReservationContext } from '../../../shared/interface';
import reservationReducer from '../../../shared/reservationReducer';
import Header from '../../header/Header';
import Searcher from '../../searcher/Searcher';

const initialState = {
    location: {
        province_id: 0,
        town_id: 0,
        address_id: 0,
        address: '',
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
        adult: 0,
        children: 0,
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
