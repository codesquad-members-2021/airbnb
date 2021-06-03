const payModalReducer = (state, action) => {
  switch (action.type) {
    case 'PUT_MODAL_DATA':
      return {
        chargePerDay: action.payload.chargePerDay,
        reviewCount: action.payload.reviewCount,
        days: action.payload.days,
      };
    default:
      return;
  }
};

export default payModalReducer;
