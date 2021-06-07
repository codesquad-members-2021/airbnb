import { atom, selector } from 'recoil';

import { calendarDate, checkINOUT, check } from '@recoil/types/dateType';

const calendarDateState = atom<calendarDate>({
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

const miniSearchBarDate = selector({
  key: 'miniSearchBarDate',
  get: ({ get }) => {
    const { checkinDate, checkoutDate } = get(checkDate);
    return `${checkinDate.month}월 ${checkinDate.day}일 - ${checkoutDate.month}월 ${checkoutDate.day}일`;
  },
});

const reservationString = selector({
  key: 'reservationString',
  get: ({ get }) => {
    const { checkinDate, checkoutDate } = get(checkDate);
    let { year, month, day } = checkinDate;
    const parse = (date: number) =>
      date > 9 ? String(date) : '0' + String(date);

    return `check_in=${year}-${parse(month)}-${parse(day)}&check_out=${
      checkoutDate.year
    }-${parse(checkoutDate.month)}-${parse(checkoutDate.day)}`;
  },
});

export {
  calendarDateState,
  isCheckInOut,
  checkDate,
  checkinNewDate,
  checkoutNewDate,
  currentHoverDate,
  miniSearchBarDate,
  reservationString,
};
