import { atom } from 'recoil';

type dateType = {
  year: number;
  month: number;
};

const calendarDateState = atom<dateType>({
  key: 'calendarDateState',
  default: {
    year: new Date().getFullYear(),
    month: new Date().getMonth(),
  },
});

export { calendarDateState };
