import { atom, selector } from 'recoil';
import { guestStateType } from '../components/header/form/guestToggle/guestType';
import { selectDateState } from './calendarAtom';

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

interface reserveInfoType {
  address: string;
  checkIn: number;
  checkOut: number;
  minCharge: number;
  maxCharge: number;
  adult: number;
  child: number;
  infants: number;
}
interface reserveQeuryType {
  address: string;
  checkIn: number | null;
  checkOut: number | null;
  minCharge: number;
  maxCharge: number;
  guests: guestStateType;
}

export const reserveInfoSelector = selector({
  key: 'reserveInformation',
  get: ({ get }): reserveQeuryType => {
    const address = get(locationState);
    const selectDateData = get(selectDateState);
    const checkIn = selectDateData.checkIn;
    const checkOut = selectDateData.checkOut;
    const priceData = get(priceState);
    const minCharge = priceData.min;
    const maxCharge = priceData.max;
    const guests = get(guestState);
    return { address, checkIn, checkOut, minCharge, maxCharge, guests };
  },
  set: ({ set }, newState): void => {
    const { address, checkIn, checkOut, minCharge, maxCharge, adult, child, infants } =
      newState as reserveInfoType;
    const date = { checkIn, checkOut };
    const price = { min: minCharge, max: maxCharge };
    const guests = { adult, child, infants };
    set(locationState, address);
    set(selectDateState, date);
    set(priceState, price);
    set(guestState, guests);
  },
});
