import { atom, selector } from 'recoil';
import { T_CheckInOut, CheckInOut } from '../atoms';

export const IsCompleteCheckInOut = selector<boolean>({
  key: 'IsCompleteCheckInOut',
  get: ({ get }) => {
    const checkInOut: T_CheckInOut = get(CheckInOut);
    return (checkInOut.in !== null && checkInOut.out !== null);
  }
});

export const HoveredDate = atom<number|null>({
  key: 'CurrentHoveredDate',
  default: null
});
