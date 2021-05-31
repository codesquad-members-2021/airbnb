const peopleReducer = (state, action) => {
  switch (action.type) {
    case 'INCREASE':
      return {
        ...state,
        [action.payload]: state[action.payload] + 1,
      };
    case 'DECREASE':
      return {
        ...state,
        [action.payload]: state[action.payload] - 1,
      };
    case 'RESET':
      return {
        adult: 0,
        child: 0,
        baby: 0,
      };
    case 'SET_PEOPLE_PARAM':
      return {
        adult: action.payload.adult,
        child: action.payload.child,
        baby: action.payload.baby,
      };
    default:
      return;
  }
};

export default peopleReducer;
