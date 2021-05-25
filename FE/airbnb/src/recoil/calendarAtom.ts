import { atom, selector } from 'recoil';

export interface dayType {
  date: number;
  isAble: boolean;
}
export interface dateType {
  year: number;
  month: number;
  date: number;
}
export interface calendarDateType {
  year: number;
  month: number;
  todayDate: dateType;
}

export const calendarOpenState = atom<boolean>({
  key: 'calendarOpenState',
  default: false,
});

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

export const selectCheckBoxState = atom<string>({
  key: 'selectCheckBoxState',
  default: '',
});

interface selectDateStateType {
  checkIn: number | null;
  checkOut: number | null;
}

export const selectDateState = atom<selectDateStateType>({
  key: 'selectDateState',
  default: { checkIn: null, checkOut: null },
});
