import { atom } from "recoil";

export const searchState = atom<any[]>({
  key: "searchState",
  default: [],
});

export const searchBackgroundState = atom({
  key: "searchBackgroundState",
  default: false,
});

export const showAccomodationModalState = atom({
  key: "showAccomodationModalState",
  default: false,
});

export const accomodationModalDataState = atom<any>({
  key: "accomodationModalDataState",
  default: {},
});

export const wishListState = atom<any[]>({
  key: "wishListState",
  default: [],
});
