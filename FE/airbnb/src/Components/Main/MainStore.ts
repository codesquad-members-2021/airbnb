import { atom } from "recoil";

interface MainData {
  hiroImage: string;
  cities: object[];
  categories: object[];
}

export const mainState = atom<MainData | null>({
  key: "mainState",
  default: null,
});

export const errorState = atom<object | null>({
  key: "errorState",
  default: null,
});
