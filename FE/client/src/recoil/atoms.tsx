import { atom, selector } from "recoil";
import { getDate } from './../utils/calendar';

const currentDate = { now: new Date() };

export const monthIndexAtom = atom({
  key: 'monthIndexState',
  default: 0
});

export const calendarStateSelector = selector({
  key: 'calendarState',
  get: ({ get }) => {
    const monthIndex = get(monthIndexAtom);
    const { now: date } = currentDate;
    return {
      leftMonthDate: getDate(date, monthIndex),
      rightMonthDate: getDate(date, monthIndex + 1),
    }
  }
});