import { atom, selector } from 'recoil';

export const tabSelectedState = atom<boolean[]>({
  key: 'tabSelectedState',
  default: [true, false, false],
});

export interface reserveSelectStateTypes {
  location: boolean;
  checkIn: boolean;
  checkOut: boolean;
  price: boolean;
  guest: boolean;
}

export const reserveSelectState = atom<reserveSelectStateTypes>({
  key: 'reserveSelectState',
  default: { location: false, checkIn: false, checkOut: false, price: false, guest: false },
});

export const reserveWithSelect = selector({
  key: 'reserveWithSelect',
  get: ({ get }) => get(reserveSelectState),
  set: ({ set }, type: any) => {
    const newState: reserveSelectStateTypes = {
      location: false,
      checkIn: false,
      checkOut: false,
      price: false,
      guest: false,
      [type]: true,
    };
    console.log(newState);
    set(reserveSelectState, newState);
  },
});
