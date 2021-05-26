import { atom } from 'recoil';

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

export { calendarDateState, isCheckInOut, checkDate };
