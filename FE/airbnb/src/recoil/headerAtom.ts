import { atom, selector } from 'recoil';
import { guestStateType } from '../components/header/form/guestToggle/guestType';

export const tabSelectedState = atom<boolean[]>({
  key: 'tabSelectedState',
  default: [true, false, false],
});

export const selectCheckBoxState = atom<string>({
  key: 'selectCheckBoxState',
  default: '',
});

export const isFormOpenedState = atom<boolean>({
  key: 'isFormOpenedState',
  default: false,
});

export const locationState = atom({
  key: 'locationState',
  default: '',
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

export const guestState = atom<guestStateType>({
  key: 'guestState',
  default: { adult: 0, child: 0, infants: 0 },
});
