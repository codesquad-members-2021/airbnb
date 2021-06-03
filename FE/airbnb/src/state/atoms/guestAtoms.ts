import { atom } from "recoil";

export const numOfAdultsState = atom<number>({
  key: "numOfAdults",
  default: 0,
});
export const numOfChildrenState = atom<number>({
  key: "numOfChildren",
  default: 0,
});
export const numOfBabiesState = atom<number>({
  key: "numOfBabies",
  default: 0,
});
