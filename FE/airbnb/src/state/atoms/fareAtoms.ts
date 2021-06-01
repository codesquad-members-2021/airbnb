import { atom } from "recoil";

export const thumbLeftPriceState = atom<number>({
  key: "thumbLeftPriceState",
  default: 10000,
});

export const thumbRightPriceState = atom<number>({
  key: "thumbRightPriceState",
  default: 1000000,
});

export const isSetPriceState = atom<boolean>({
  key: "isSetPriceState",
  default: false,
});
