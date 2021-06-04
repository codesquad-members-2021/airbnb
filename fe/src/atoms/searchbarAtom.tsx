import { atom, selector } from "recoil";

type HoverData = {
  [key: string]: boolean;
};
type popUp = {
  toggle: boolean;
  hotelID: number | undefined;
  price: number | undefined;
  userId: any | undefined;
};
export const popUpState = atom<popUp>({
  key: "popUpState",
  default: {
    toggle: false,
    hotelID: undefined,
    price: undefined,
    userId: undefined,
  },
});

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

export const priceSelector = selector({
  key: "priceSelector",
  get({ get }) {
    const { maxPrice, minPrice } = get(priceData);

    if (maxPrice === 0) return "금액대 설정";
    return `₩${minPrice} ~ ₩${maxPrice}`;
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

export const locationDataSelector = selector({
  key: "locationDataSelector",
  get({ get }) {
    const { name } = get(locationData);
    if (!name) return "어디로 가시렵니까?";
    return name;
  },
});

export const isHotelPage = atom<boolean>({
  key: "isHotelPage",
  default: false,
});

export const locationData = atom<{
  latitude: number;
  longitude: number;
  name: string;
}>({
  key: "locationData",
  default: { latitude: Infinity, longitude: Infinity, name: "" },
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

export const searchParamsSelector = selector({
  key: "searchParams",
  get({ get }) {
    const { latitude, longitude } = get(locationData);
    const [checkIn, checkOut] = get(CalendarData);
    const { maxPrice, minPrice } = get(priceData);
    const { adult, teen, kids } = get(PeopleData);

    const dateParser = (date: number) =>
      new Date(date).toISOString().slice(0, 10);
    if (checkIn && checkOut && latitude < Infinity && longitude < Infinity) {
      if (!maxPrice && !adult) {
        return `&checkin=${dateParser(checkIn)}&checkout=${dateParser(
          checkOut
        )}&latitude=${latitude}&longitude=${longitude}`;
      } else {
        return `checkin=${dateParser(checkIn)}&checkout=${dateParser(
          checkOut
        )}&latitude=${latitude}&longitude=${longitude}&pricemax=${maxPrice}&pricemin=${minPrice}&adults=${adult}&children=${teen}&infants=${kids}`;
      }
    }
  },
});
