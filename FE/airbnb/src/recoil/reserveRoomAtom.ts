import { atom, selector } from 'recoil';
import { roomType } from '../components/reserveRoomList/roomType';
import { API } from '../util/api';

export const roomsState = atom<roomType[] | null>({
  key: 'roomsState',
  default: null,
});

export const getRoomsSelector = selector({
  key: 'rooms/get',
  get: async () => {
    const response = await fetch(
      'http://13.125.35.62/accommodations?check_in=2021-05-21&check_out=2021-05-22&min_charge=50000&max_charge=100000&guests=4'
    );
    const data = await response.json();
    return data;
  },
});
