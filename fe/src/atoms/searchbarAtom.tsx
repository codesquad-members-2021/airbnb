import { atom, selector } from "recoil";

export const HoveredDate = atom<number | null>({
  key: "CurrentHoveredDate",
  default: null,
});

export const CalendarData = atom<number[]>({
  key: "CalendarData",
  default: [],
});


export const CalendarCheckInSelector = selector({
  key: "CalendarCheckIn",
  get({ get }) {
    if(!get(CalendarData)[0]) return '날짜입력'
    const date = new Date(get(CalendarData)[0])

    return `${date.getMonth()+1} 월 ${date.getDate()} 일`;
  }
});

export const CalendarCheckOutSelector = selector({
  key: "CalendarCheckOut",
  get({ get }) {
    if(!get(CalendarData)[1]) return '날짜입력'
    const date = new Date(get(CalendarData)[1])

    return `${date.getMonth()+1} 월 ${date.getDate()} 일`;
  }
});