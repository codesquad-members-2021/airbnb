import { atom, selector } from "recoil";

export const CalendarData = atom<number[]>({
  key: "CalendarData",
  default: [],
});

export const PeopleData = atom<{ adult: number; teen: number; kids: number }>({
  key: "PeopleData",
  default: { adult: 0, teen: 0, kids: 0 },
});

export const PeopleDataSelector = selector({
  key: "PeopleDataSelector",
  get({ get }) {
    const { adult, teen, kids } = get(PeopleData);
    if (!adult) return "게스트 추가";
    return `게스트 ${adult + teen}명 , 유아 ${kids}명`;
  },
});

export const CalendarCheckInSelector = selector({
  key: "CalendarCheckIn",
  get({ get }) {
    if (!get(CalendarData)[0]) return "날짜입력";
    const date = new Date(get(CalendarData)[0]);

    return `${date.getMonth() + 1}월 ${date.getDate()}일`;
  },
});

export const CalendarCheckOutSelector = selector({
  key: "CalendarCheckOut",
  get({ get }) {
    if (!get(CalendarData)[1]) return "날짜입력";
    const date = new Date(get(CalendarData)[1]);

    return `${date.getMonth() + 1}월 ${date.getDate()}일`;
  },
});
