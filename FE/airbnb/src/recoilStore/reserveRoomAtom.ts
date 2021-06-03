import { atom, selector, selectorFamily, SerializableParam } from 'recoil';
import { roomType } from '../components/reserveRoomList/roomType';
import { serverAPI } from '../util/api';
import { timeToDate } from '../util/calendarUtils';
import { delay } from '../util/util';
import { selectDateState } from './calendarAtom';
import { reserveInfoSelector, reserveQueryType, totalGuestSelector } from './headerAtom';
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

interface reserveRoomInfoType {
  checkIn: string;
  checkOut: string;
  guests: number;
  id: number;
  charge: number;
}

type reserveArgType = SerializableParam & {
  id: number;
  charge: number;
};

export const reserveRoomSelector = selectorFamily({
  key: 'post/reserve-room',
  get:
    ({ id, charge }: reserveArgType) =>
    async ({ get }) => {
      const selectDateData = get(selectDateState);
      const checkIn = timeToDate(selectDateData.checkIn);
      const checkOut = timeToDate(selectDateData.checkOut);
      const guests = get(totalGuestSelector);
      const roomReserveInfoData: reserveRoomInfoType = { id, charge, checkIn, checkOut, guests };
      const postReserveOptions = {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
      };
      const response = await fetch(serverAPI.reserveRoom(roomReserveInfoData), postReserveOptions);
      const statusCode = response.status;
      if (statusCode === 200) return '성공!';
      else throw Error('잘못된 요청입니다.');
    },
});
