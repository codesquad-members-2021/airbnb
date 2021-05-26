const modalClickReducer = (state, action) => {
  switch (action.type) {
    case 'CHECKINOUT':
      return {
        checkInOut: true,
        price: false,
        people: false,
      };
    case 'PRICE_MODAL_OFF':
      return {
        checkInOut: false,
        price: !state.price,
        people: false,
      };
    case 'PEOPLE_MODAL_OFF':
      return {
        checkInOut: false,
        price: false,
        people: !state.people,
      };
    case 'EVERY_MODAL_OFF':
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
