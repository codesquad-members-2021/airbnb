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
    if (average === 'NaN')
      return '설정하신 금액에 맞는 숙소를 찾을 수 없습니다.';
    else return `평균 1박 요금은 $${average} 입니다.`;
  },
});

const delay = (time: number, data: any) => {
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve(data);
    }, time);
  });
};

const priceList = selector({
  key: 'priceList',
  // 추후 체크인, 체크아웃을 쿼리에 붙인다.
  get: async () => {
    const res = await fetch(
      'http://3.35.178.32:8080/accomodation/prices/period?check_in=2021-01-01&check_out=2021-12-31'
    );
    const data = await res.json();
    return await delay(3000, data);
  },
});

const searchBarPriceShow = selector({
  key: 'searchBarPriceShow',
  get: ({ get }) => {
    const { MIN_PRICE, MAX_PRICE } = get(priceRange);
    return `$${MIN_PRICE.toLocaleString()}~${MAX_PRICE.toLocaleString()}`;
  },
});

export {
  priceRange,
  priceList,
  averagePrice,
  selectedPrice,
  searchBarPriceShow,
};
