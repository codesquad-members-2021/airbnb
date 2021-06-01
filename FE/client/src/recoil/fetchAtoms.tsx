import { selector } from "recoil";
import { locationAtom } from "./atoms";

const API_END_POINT: string = 'https://e4557770-5d57-4419-990e-c7cfaffb1f5a.mock.pstmn.io';

type PriceListType = {
  prices: number[]
}

export const fetchPriceListSelector = selector<PriceListType>({
  key: 'fetchPriceListSelector',
  get: async ({ get }) => {
    const { name } = get(locationAtom);
    return await (await fetch(`${API_END_POINT}/api/prices?localName=${name ? name : '서울'}`)).json();
  }
});

export const fetchLocationSelector = selector({
  key: 'fetchLocationSelector',
  get: async () => {
    return await (await fetch(`${API_END_POINT}/api/search`)).json();
  }
});
