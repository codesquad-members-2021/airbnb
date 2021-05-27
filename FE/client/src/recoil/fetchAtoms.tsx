import { atom, selector } from "recoil";

const API_END_POINT: string = 'https://e4557770-5d57-4419-990e-c7cfaffb1f5a.mock.pstmn.io';

export const locationKeywordAtom = atom<string>({
  key: 'locationKeywordAtom',
  default: ''
});

type PriceListType = {
  prices: number[]
}

export const fetchPriceListSelector = selector<PriceListType>({
  key: 'fetchPriceListSelector',
  get: async ({ get }) => {
    return await (await fetch(`${API_END_POINT}/api/prices?localName=서울`)).json();
  }
});

