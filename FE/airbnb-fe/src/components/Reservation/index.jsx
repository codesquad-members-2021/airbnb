import React, { createContext, useState } from 'react';
import Search from '../Atoms/Search';
import ReservationHeader from './ReservationHeader';
import ReservationMain from './ReservationMain';
export const ReservationContext = createContext();

const Reservation = ({ match }) => {
  console.log(match.params);
  return (
    <ReservationContext.Provider value={{ match }}>
      <ReservationHeader />
      <ReservationMain />
    </ReservationContext.Provider>
  );
};

export default Reservation;
