import { atom, selector } from 'recoil';

export const tabSelectedState = atom<boolean[]>({
  key: 'tabSelectedState',
  default: [true, false, false],
});

interface dateType {
  year: number;
  month: number;
}

export const calendarState = atom<dateType>({
  key: 'calendarState',
  default: { year: new Date().getFullYear(), month: new Date().getMonth() + 1 },
});
