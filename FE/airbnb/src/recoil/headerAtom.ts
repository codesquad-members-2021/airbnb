import { atom, selector } from 'recoil';

export const tabSelectedState = atom<boolean[]>({
  key: 'tabSelectedState',
  default: [true, false, false],
});

export const priceState = atom({
  key: 'priceState',
  default: { min: 10000, max: 1000000 },
});

export const pauseBtnPositionState = atom({
  key: 'pauseBtnPositionState',
  default: { left: 0, right: 0 },
});

export const pauseBtnLastPositionState = atom({
  key: 'pauseBtnLastPositionState',
  default: { left: 0, right: 0 },
});
