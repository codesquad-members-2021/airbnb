import React from 'react';
import Search from '../Atoms/Search';
const Reservation = ({ match }) => {
  console.log(match.params);
  return (
    <div>
      <Search matchParam={match.params} />
    </div>
  );
};

export default Reservation;
