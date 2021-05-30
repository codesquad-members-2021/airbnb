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
  set: ({ set }, clickedFilter) => {
    // 2번째 파라미터 에는 추가로 받을 인자를 나타냅니다.
    switch (clickedFilter) {
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
        throw new Error("Unhandled Filter Type");
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
    nextMonth: new Date().getMonth(),
    today: {
      year: new Date().getFullYear(),
      month: new Date().getMonth() + 1,
      date: new Date().getDate(),
    },
  },
});

export const calendarFilterState = atom<T.CalendarFilter>({
  key: "calendarFilterState",
  default: {
    checkIn: {
      month: null,
      date: null,
    },
    checkOut: {
      month: null,
      date: null,
    },
  },
});

export const roomPriceFilterState = atom<T.RoomPriceFilter>({
  key: "roomPriceFilterState",
  default: {
    min: null,
    max: null,
  },
});

export const guestFilterState = atom<T.GuestsState>({
  key: "guestFilterState",
  default: {
    adult: null,
    child: null,
    toddler: null,
  },
});
