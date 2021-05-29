import { atom, selector } from 'recoil';

interface price {
  MIN_PRICE: number;
  MAX_PRICE: number;
  [key: string]: number;
}

const priceRange = atom<price>({
  key: 'priceRange',
  default: {
    MIN_PRICE: 0,
    MAX_PRICE: 1000000,
  },
});

const selectedPrice = atom<number[]>({
  key: 'selectedPrice',
  default: [],
});

const averagePrice = selector({
  key: 'averagePrice',
  get: ({ get }) => {
    const priceList = get(selectedPrice);
    const average = Math.ceil(
      priceList.reduce((prev, curr) => prev + curr, 0) / priceList.length
    ).toLocaleString();
    if (typeof average === 'string') return average;
    else return '0';
  },
});

const priceList = selector({
  key: 'priceList',
  get: async () => {
    const res = await fetch('http://3.35.3.106:8080/accomodation/price');
    const data = await res.json();
    return data;
  },
});

export { priceRange, priceList, averagePrice, selectedPrice };
