const calendarReducer = (state, action) => {
  switch (action.type) {
    case 'ADD_CHECKIN_DATA':
      return {
        ...state,
        checkIn: {
          year: action.payload.year,
          month: action.payload.month,
          day: action.payload.day,
        },
      };
    case 'ADD_CHECKOUT_DATA':
      return {
        ...state,
        checkOut: {
          year: action.payload.year,
          month: action.payload.month,
          day: action.payload.day,
        },
      };
    case 'RESET_CHECKOUT_DATA':
      return {
        ...state,
        checkOut: {
          year: 0,
          month: 0,
          day: 0,
        },
      };
    case 'RESET_CAL':
      return {
        checkOut: {
          year: 0,
          month: 0,
          day: 0,
        },
        checkIn: {
          year: 0,
          month: 0,
          day: 0,
        },
      };
    default:
      return;
  }
};

export default calendarReducer;

/*
{
    checkIn: { year: 0, month: 0, day: 0 },
    checkOut: { year: 0, month: 0, day: 0 },
  }
*/
