import { atom, selector } from 'recoil';

export const HoveredDate = atom<number|null>({
  key: 'CurrentHoveredDate',
  default: null
});
