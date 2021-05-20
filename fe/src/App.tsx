import './App.css';
import React, { useReducer } from 'react';
import Router from './Router';
import { ReservationContext } from './shared/interface';
import reducer from './shared/reducer';
import { ReservationStateContext, ReservationDispatchContext } from './Contexts';

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

function App(): React.ReactElement {
    const [reservationState, dispatch] = useReducer(reducer, initialState);

    return (
        <ReservationDispatchContext.Provider value={dispatch}>
            <ReservationStateContext.Provider value={reservationState}>
                <Router />;
            </ReservationStateContext.Provider>
        </ReservationDispatchContext.Provider>
    );
}

export default App;
