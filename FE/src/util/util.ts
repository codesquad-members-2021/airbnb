export const threeDigitsComma = (nNum : number) => ("" + nNum).replace(/\B(?=(\d{3})+(?!\d))/g, ",");
