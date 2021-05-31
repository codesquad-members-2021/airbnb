import { atom } from "recoil";

export const checkinDateState = atom<string>({
  key: "checkinDate",
  default: "날짜 입력",
});

export const checkoutDateState = atom<string>({
  key: "checkoutDate",
  default: "날짜 입력",
});

export const hoverDateState = atom<string>({
  key: "hoverDate",
  default: "",
});

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
