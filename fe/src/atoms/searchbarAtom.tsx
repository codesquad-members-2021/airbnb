import { atom, selector } from "recoil";

type HoverData = {
  [key: string]: boolean;
};
export const SearchBarHoverData = atom<HoverData>({
  key: "SearchBarHoverData",
  default: {
    위치: false,
    체크인: false,
    체크아웃: false,
    요금: false,
    인원수: false,
  },
});

export const searchParamsSelector = selector({
  key: "searchParams",
  get({ get }) {
    let res = "";
    const { latitude, longitude } = get(locationData);
    const [checkIn, checkOut] = get(CalendarData);

    const { adult, teen, kids } = get(PeopleData);

    const dateParser = (date: number) =>
      new Date(date).toISOString().slice(0, 10);

    if (checkIn && checkOut && latitude && longitude) {
      res = `&checkin=${dateParser(checkIn)}&checkout=${dateParser(
        checkOut
      )}&latitude=${latitude}&longitude=${longitude}`;
    }
    if (adult) {
      console.log("ha");
      res += `&adults=${adult}&children=${teen}&infants=${kids}`;
    }

    return res;
  },
});

export const priceSelector = selector({
  key: "priceSelector",
  get({ get }) {
    const { maxPrice, minPrice } = get(priceData);
    const { max, min, width } = get(priceSliderData);
    const gap = maxPrice - minPrice;
    const curMin = minPrice + Math.floor((gap * min) / width / 1000) * 1000;
    const curMax = minPrice + Math.floor((gap * max) / width / 1000) * 1000;
    if (max === Infinity && maxPrice === 0) return "금액대 설정";
    return `₩${curMin} ~ ₩${curMax}`;
  },
});

export const priceData = atom<{
  maxPrice: number;
  minPrice: number;
}>({
  key: "priceData",
  default: { maxPrice: 0, minPrice: 0 },
});

export const priceSliderData = atom<{
  max: number;
  min: number;
  width: number;
}>({
  key: "priceSliderData",
  default: { max: Infinity, min: 0, width: 0 },
});

export const locationData = atom<{
  latitude: number | undefined;
  longitude: number | undefined;
}>({
  key: "locationData",
  default: { latitude: undefined, longitude: undefined },
});

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
