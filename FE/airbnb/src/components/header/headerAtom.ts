import { atom, selector } from 'recoil';

export const tabSelectedState = atom<boolean[]>({
  key: 'tabSelectedState',
  default: [true, false, false],
});

export const reserveSelectState = atom<boolean[]>({
  key: 'reserveSelectState',
  default: new Array(5).fill(false),
});
