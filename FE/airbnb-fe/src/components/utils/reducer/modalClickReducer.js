const modalClickReducer = (state, action) => {
  switch (action.type) {
    case 'CHECKINOUT':
      return {
        checkInOut: !state.checkInOut,
        price: false,
        people: false,
      };
    case 'PRICE':
      return {
        checkInOut: false,
        price: !state.price,
        people: false,
      };
    case 'PEOPLE':
      return {
        checkInOut: false,
        price: false,
        people: !state.people,
      };
    case 'ModalOff':
      return {
        checkInOut: false,
        price: false,
        people: false,
      };

    default:
      return;
  }
};

export default modalClickReducer;
