import { atom } from 'recoil';

const isMiniSearchBarOpen = atom({
  key: 'isMiniSearchBarOpen',
  default: true,
});

export { isMiniSearchBarOpen };
