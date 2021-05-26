import { atom } from "recoil";

export const HoveredDate = atom<number | null>({
  key: "CurrentHoveredDate",
  default: null,
});

export const CalendarData = atom<number[]>({
  key: "CalendarData",
  default: [],
});
