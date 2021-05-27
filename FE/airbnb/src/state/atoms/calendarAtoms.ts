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
