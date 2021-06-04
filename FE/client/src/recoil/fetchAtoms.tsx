import { selector } from "recoil";
import { locationAtom, userInfoAtom } from "./atoms";

const API_END_POINT: string = 'http://15.165.235.96';

type PriceListType = {
  prices: number[]
}

export const fetchPriceListSelector = selector<PriceListType>({
  key: 'fetchPriceListSelector',
  get: async ({ get }) => {
    const { name } = get(locationAtom);
    return await (await fetch(`${API_END_POINT}/api/search/prices?locationName=${name ? name : '서울'}`)).json();
  }
});

export const fetchLocationSelector = selector({
  key: 'fetchLocationSelector',
  get: async () => {
    return await (await fetch(`${API_END_POINT}/api/search`)).json();
  }
});

export const fetchHotelListSelector = selector({
  key: 'fetchHotelListSelector',
  get: async ({ get }) => {
    const { x, y, zoom } = get(userInfoAtom);
    return await (await fetch(`${API_END_POINT}/api/search/coordinate?x=${x}&y=${y}&zoom=${zoom}`)).json();
  }
});
