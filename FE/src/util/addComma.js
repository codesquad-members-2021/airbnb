const addComma = (price) => price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
export default addComma;
