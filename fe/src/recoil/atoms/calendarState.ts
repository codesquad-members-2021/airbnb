import { atom } from 'recoil';

const dateSearchClick = atom<boolean>({
  key: 'dateSearchClick',
  default: false,
});

export { dateSearchClick };
