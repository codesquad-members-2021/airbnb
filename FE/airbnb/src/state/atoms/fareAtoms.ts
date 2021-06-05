import { atom, selector } from "recoil";

export const minPriceState = atom<number>({
  key: "minPriceState",
  default: 0,
});

export const maxPriceState = atom<number>({
  key: "maxPriceState",
  default: 10000000,
});

export const thumbLeftPriceState = atom<number>({
  key: "thumbLeftPriceState",
  default: 0,
});

export const thumbRightPriceState = atom<number>({
  key: "thumbRightPriceState",
  default: 10000000,
});

export const leftValueState = atom({
  key: "leftValueState",
  default: 0
})

export const rightValueState = atom({
  key: "rightValueState",
  default: 100
})

export const isSetPriceState = atom<boolean>({
  key: "isSetPriceState",
  default: false,
});

export const priceChartDataState = atom({
  key: "priceChartData",
  default: [0],
});

export const priceToString = selector({
  key: "priceToString",
  get: ({ get }) => {
    const leftPrice = get(thumbLeftPriceState);
    const rightPrice = get(thumbRightPriceState);
    return `₩${leftPrice.toLocaleString()} - ₩${rightPrice.toLocaleString()}`;
  },
});
