import { atom, selector } from 'recoil';

export const LocationSearchState = atom<string>({
  key: 'LocationSearchState',
  default: ''
});

export type T_CheckInOut = {
  in: Date | null,
  out: Date | null
};

export const CheckInOutState = atom<T_CheckInOut>({
  key: 'CheckInOutState',
  default: {
    in: null,
    out: null
  }
});

export type T_CheckInOutString = {
  in: string,
  out: string
};

export const CheckInOutStringState = selector<T_CheckInOutString>({
  key: 'CheckInOutStringState',
  get: ({ get }) => {
    const checkInOutState: T_CheckInOut = get(CheckInOutState);

    return {
      in: `${checkInOutState.in?.getMonth()}월 ${checkInOutState.in?.getDay()}일`,
      out: `${checkInOutState.out?.getMonth()}월 ${checkInOutState.out?.getDay()}일`
    }
  },
});

