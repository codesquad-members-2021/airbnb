import { atom } from "recoil";

export const latitudeState = atom<number>({
  key: "latitudeState",
  default: 37.498095,
});

export const longitudeState = atom<number>({
  key: "longitudeState",
  default: 127.02761,
});

export const regionNameState = atom<string>({
  key: "regionNameState",
  default: "서울특별시 강남구 역삼동",
});
