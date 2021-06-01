import { atom, selector } from 'recoil';
import { roomType } from '../components/reserveRoomList/roomType';
import { serverAPI } from '../util/api';
import { reserveInfoSelector, reserveQueryType } from './headerAtom';
import { roomData } from './roomSampleData';

export const roomsState = atom<roomType[] | null>({
  key: 'roomsState',
  default: roomData,
});

export const getRoomsSelector = selector({
  key: 'rooms/get',
  get: async ({ get }) => {
    const reserveInfo = get(reserveInfoSelector) as reserveQueryType;
    if (isUndefined(reserveInfo)) return null;
    const response = await fetch(serverAPI.getRooms(reserveInfo));
    const data = await response.json();
    return data;
  },
});

const isUndefined = (data: reserveQueryType) => Object.values(data).filter((v) => !v).length > 0;
