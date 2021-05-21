import { atom, selector } from 'recoil';
import { ReactElement } from 'react';

import LocationSearch from './LocationSearch/LocationSearch';
import CalendarSlider from './CalendarSlider/CalendarSlider';

export const SelectedBtnIdx = atom<number|null>({
  key: 'SelectedBtnIdx',
  default: null
});

export const DropPopupContent = selector<ReactElement|null>({
  key: 'DropPopupContent',
  get: ({ get }): (ReactElement|null) => {
    const selectedBtnIdx: number|null = get(SelectedBtnIdx);

    switch(selectedBtnIdx) {
      case null:
        return null;

      case 0:
        return <LocationSearch/>;

      case 1:
      case 2:
        return <CalendarSlider/>;

      // TODO: 3, 4

      default:
        throw new Error(`Not existing index ${selectedBtnIdx}`);
    }
  }
});

export const LocationSearchState = atom<string>({
  key: 'LocationSearchState',
  default: ''
});

export type T_CheckInOutState = {
  in: Date | null,
  out: Date | null
};

export const CheckInOutState = atom<T_CheckInOutState>({
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
    const checkInOutState: T_CheckInOutState = get(CheckInOutState);

    return {
      in: `${checkInOutState.in?.getMonth()}월 ${checkInOutState.in?.getDay()}일`,
      out: `${checkInOutState.out?.getMonth()}월 ${checkInOutState.out?.getDay()}일`
    }
  },
});

