import { atom } from "recoil";

export const searchState = atom<any[]>({
  key: "searchState",
  default: [],
});

export const searchBackgroundState = atom({
  key: "searchBackgroundState",
  default: false,
});
