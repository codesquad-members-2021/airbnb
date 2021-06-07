import { atom, selector } from "recoil";
import * as T from "./AtomTypes";

export const roomCardClickedState = atom({
  key: "roomCardClickState",
  default: false,
});

export const MiniSearchBarClickState = atom({
  key: "miniBarClickState",
  default: false,
});

export const checkInClickState = atom({
  key: "checkInClickState",
  default: false,
});
export const checkOutClickState = atom({
  key: "checkOutClickState",
  default: false,
});

export const roomPriceClickState = atom({
  key: "roomPriceClickState",
  default: false,
});

export const guestsClickState = atom({
  key: "guestsClickState",
  default: false,
});

export const searchBarClickState = selector({
  key: "searchBarClickState",
  get: ({ get }) => {
    const roomPrice = get(roomPriceClickState);
    const checkIn = get(checkInClickState);
    const checkOut = get(checkOutClickState);
    const guests = get(guestsClickState);
  },
  set: ({ set }, clicked) => {
    // 2번째 파라미터 에는 추가로 받을 인자를 나타냅니다.
    switch (clicked) {
      case "CHECK_IN":
        set(checkInClickState, true);
        set(checkOutClickState, false);
        set(roomPriceClickState, false);
        set(guestsClickState, false);
        break;
      case "CHECK_OUT":
        set(checkInClickState, false);
        set(checkOutClickState, true);
        set(roomPriceClickState, false);
        set(guestsClickState, false);
        break;
      case "ROOM_PRICE":
        set(checkInClickState, false);
        set(checkOutClickState, false);
        set(roomPriceClickState, true);
        set(guestsClickState, false);
        break;
      case "GUESTS":
        set(checkInClickState, false);
        set(checkOutClickState, false);
        set(roomPriceClickState, false);
        set(guestsClickState, true);
        break;
      case "RESET":
        set(checkInClickState, false);
        set(checkOutClickState, false);
        set(roomPriceClickState, false);
        set(guestsClickState, false);
        break;
      default:
        throw new Error("Unhandled  Type");
    }
  },
});

export const calendarModalState = atom<T.CalendarModal>({
  key: "calendarModalState",
  default: {
    year: new Date().getFullYear(), //2021
    month: new Date().getMonth(), //5 (6월)
    today: {
      year: new Date().getFullYear(),
      month: new Date().getMonth(),
      date: new Date().getDate(),
      dateObj: new Date(),
    },
  },
});

export const calendarState = atom<T.Calendar>({
  key: "calendarState",
  default: {
    checkIn: {
      month: null,
      date: null,
      dateObj: new Date(),
    },
    checkOut: {
      month: null, //보여지는 그대로 month +1 로 저장됨
      date: null,
      dateObj: new Date(),
    },
  },
});
//얘 사용하는듯
export const checkInState = atom<T.Date>({
  key: "checkInState",
  default: {
    year: null,
    month: null,
    date: null,
    dateObj: new Date(),
  },
});
export const checkOutState = atom<T.Date>({
  key: "checkOutState",
  default: {
    year: null,
    month: null,
    date: null,
    dateObj: new Date(),
  },
});
export const roomPriceState = atom<T.RoomPrice>({
  key: "roomPriceState",
  default: {
    min: 0,
    max: 0,
  },
});

export const guestState = atom<T.GuestsState>({
  key: "guestState",
  default: {
    adult: 0,
    child: 0,
    toddler: 0,
  },
});

export const defaultState = atom({
  key: "defaultState",
  default: null,
});
