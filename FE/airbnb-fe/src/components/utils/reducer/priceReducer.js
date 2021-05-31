const PriceReducer = (state, action) => {
  switch (action.type) {
    case 'SET_MIN':
      return { ...state, minPrice: action.payload };
    case 'SET_MAX':
      return { ...state, maxPrice: action.payload };
    case 'RESET':
      return { minPrice: 0, maxPrice: 1000000 };
    case 'SET_PRICE_PARAM':
      return {
        minPrice: action.payload.minPrice,
        maxPrice: action.payload.maxPrice,
      };
    default:
      return;
  }
};

export default PriceReducer;
