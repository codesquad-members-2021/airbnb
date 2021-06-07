import React, { createContext, useReducer } from 'react';
import ReservationHeader from './ReservationHeader';
import ReservationMain from './ReservationMain';
import payModalReducer from '../utils/reducer/payModalReducer';

export const ReservationContext = createContext();

const Reservation = ({ match }) => {
  const [payModalData, payModalDispatch] = useReducer(payModalReducer, {
    chargePerDay: 0,
    reviewCount: 0,
    days: 0,
  });

  //http://3.35.226.74/airbnb/?location=seoul&checkin=2021-05-28&checkout=2021-06-02&adults=2&children=1&infants=1
  return (
    <ReservationContext.Provider
      value={{ match, payModalDispatch, payModalData }}
    >
      <ReservationHeader />
      <ReservationMain />
    </ReservationContext.Provider>
  );
};

export default Reservation;
