import { atom, selector } from "recoil";
import * as T from "./AtomTypes";

export const clickCountState = atom({
  key: "clickCountState",
  default: 0,
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
      case "IN":
        set(checkInClickState, true);
        set(checkOutClickState, false);
        set(roomPriceClickState, false);
        set(guestsClickState, false);
        break;
      case "OUT":
        set(checkInClickState, false);
        set(checkOutClickState, true);
        set(roomPriceClickState, false);
        set(guestsClickState, false);
        break;
      case "PRICE":
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
// export const calendarToggleState = atom<T.SearchBarToggle>({
//   key: "calendarToggleState",
//   default: {
//     calendar: false,
//     roomPrice: false,
//     guests: false,
//   },
// });

export const calendarModalState = atom<T.CalendarModal>({
  key: "calendarModalState",
  default: {
    year: new Date().getFullYear(), //2021
    month: new Date().getMonth(), //5
    today: {
      year: new Date().getFullYear(),
      month: new Date().getMonth() + 1,
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

export const roomPriceState = atom<T.RoomPrice>({
  key: "roomPriceState",
  default: {
    min: null,
    max: null,
  },
});

export const guestState = atom<T.GuestsState>({
  key: "guestState",
  default: {
    adult: null,
    child: null,
    toddler: null,
  },
});
