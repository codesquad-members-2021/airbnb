import { atom } from 'recoil';

export const isOpenProfileModal = atom<boolean>({
  key: 'isOpenProfileModal',
  default: false,
});
