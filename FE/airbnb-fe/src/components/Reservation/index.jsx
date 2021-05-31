import React, { createContext, useState } from 'react';
import Search from '../Atoms/Search';
import ReservationHeader from './ReservationHeader';

export const ReservationContext = createContext();

const Reservation = ({ match }) => {
  console.log(match.params);
  return (
    <ReservationContext.Provider value={{ match }}>
      <ReservationHeader />
    </ReservationContext.Provider>
  );
};

export default Reservation;
