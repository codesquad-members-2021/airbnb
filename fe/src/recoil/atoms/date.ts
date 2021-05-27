import { atom, selector } from 'recoil';

type dateType = {
  year: number;
  month: number;
  day?: number;
};

type check = {
  checkinDate: dateType;
  checkoutDate: dateType;
};

type checkINOUT = {
  checkin: boolean;
  checkout: boolean;
};

const calendarDateState = atom<dateType>({
  key: 'calendarDateState',
  default: {
    year: new Date().getFullYear(),
    month: new Date().getMonth(),
  },
});

const currentHoverDate = atom<number>({
  key: 'currentHoverDate',
  default: 0,
});

const isCheckInOut = atom<checkINOUT>({
  key: 'isCheckInOut',
  default: { checkin: false, checkout: false },
});

const checkDate = atom<check>({
  key: 'checkINOUT',
  default: {
    checkinDate: {
      year: 0,
      month: 0,
      day: 0,
    },
    checkoutDate: {
      year: 0,
      month: 0,
      day: 0,
    },
  },
});

const checkinNewDate = selector({
  key: 'checkinNewDate',
  get: ({ get }) => {
    const { checkinDate } = get(checkDate);
    const { year, month, day } = checkinDate;
    return new Date(year, month, day).getTime();
  },
});

const checkoutNewDate = selector({
  key: 'checkoutNewDate',
  get: ({ get }) => {
    const { checkoutDate } = get(checkDate);
    const { year, month, day } = checkoutDate;
    return new Date(year, month, day).getTime();
  },
});

export {
  calendarDateState,
  isCheckInOut,
  checkDate,
  checkinNewDate,
  checkoutNewDate,
  currentHoverDate,
};
