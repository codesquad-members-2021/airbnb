import { atom, selector } from 'recoil';

export const tabSelectedState = atom<boolean[]>({
  key: 'tabSelectedState',
  default: [true, false, false],
});

interface dateType {
  year: number;
  month: number;
  date?: number;
}
export interface calendarDateType {
  year: number;
  month: number;
  todayDate?: dateType;
}

export const calendarState = atom<calendarDateType>({
  key: 'calendarState',
  default: {
    year: new Date().getFullYear(),
    month: new Date().getMonth() + 1,
    todayDate: {
      year: new Date().getFullYear(),
      month: new Date().getMonth() + 1,
      date: new Date().getDate(),
    },
  },
});
