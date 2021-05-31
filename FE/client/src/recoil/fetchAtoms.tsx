import { atom, selector } from "recoil";
import { LocationAtom } from "./atoms";
import { LocationItemType } from '@Components/commons/baseType';

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
    const { name } = get(LocationAtom);
    return await (await fetch(`${API_END_POINT}/api/prices?localName=${name ? name : '서울'}`)).json();
  }
});


export const fetchLocationSelector = selector({
  key: 'fetchLocationSelector',
  get: async () => {
    return await (await fetch(`${API_END_POINT}/api/search`)).json();
  }
});

// export const fetchHotelListSelector = selector<LocationItemType>({})