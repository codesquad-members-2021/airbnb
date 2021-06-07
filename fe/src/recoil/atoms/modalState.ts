import { atom } from 'recoil';

interface modal {
  calendar: boolean;
  price: boolean;
  guest: boolean;
  [foucs: string]: boolean;
}

const isOpenPriceChart = atom<boolean>({
  key: 'isOpenPriceChart',
  default: false,
});

const modalStates = atom<modal>({
  key: 'modalStates',
  default: {
    calendar: false,
    price: false,
    guest: false,
  },
});

export { isOpenPriceChart, modalStates };
