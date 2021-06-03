import { atom, selector } from 'recoil';
import { roomType } from '../components/reserveRoomList/roomType';
import { serverAPI } from '../util/api';
import { delay } from '../util/util';
import { reserveInfoSelector, reserveQueryType } from './headerAtom';
import { roomData } from './roomSampleData';

export const roomsState = selector<roomType[] | null>({
  key: 'roomsState',
  get: ({ get }) => {
    const data = get(getRoomsSelector);
    if (!data) return null;
    return data.data.accommodations;
  },
});

export const getRoomsSelector = selector({
  key: 'rooms/get',
  get: async ({ get }) => {
    const reserveInfo = get(reserveInfoSelector) as reserveQueryType;
    if (isUndefined(reserveInfo)) return null;
    const response = await fetch(serverAPI.getRooms(reserveInfo));
    const data = await response.json();

    return delay(1000, data);
  },
});

const isUndefined = (data: reserveQueryType) => Object.values(data).filter((v) => !v).length > 0;
