import { atom } from 'recoil';

interface modal {
  calendar: boolean;
  price: boolean;
  guest: boolean;
  [foucs: string]: boolean;
}

export const isOpenPriceChart = atom<boolean>({
  key: 'isOpenPriceChart',
  default: false,
});

export const modalState = atom<modal>({
  key: 'isOpenPriceChart',
  default: {
    calendar: false,
    price: false,
    guest: false,
  },
});
