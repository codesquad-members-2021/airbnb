import { atom, selector } from "recoil";
import { getDate, currentDate } from '@/utils/calendarUtil';
import { getChargeRange, getNumberOfGuest, getUserDate } from "@/utils/serviceUtils";
import { BASE_ZOOM_LEVEL, SEOUL_LOCATION } from "@/Components/commons/base";

export const monthIndexAtom = atom<number>({
  key: 'monthIndexAtom',
  default: 0
});

type CalendarSelectorType = {
  leftMonthDate: Date,
  rightMonthDate: Date
}

export const calendarStateSelector = selector<CalendarSelectorType>({
  key: 'calendarStateSelector',
  get: ({ get }) => {
    const monthIndex = get(monthIndexAtom);
    const date = currentDate;
    return {
      leftMonthDate: getDate(date, monthIndex),
      rightMonthDate: getDate(date, monthIndex + 1),
    }
  }
});

export const calendarClickAtom = atom<Array<number>>({
  key: 'calendarClickAtom',
  default: []
});

type SearchBarFocusAtomType = {
  location: boolean,
  entryDate: boolean,
  charge: boolean,
  personnel: boolean,
  focus: boolean
}

export const searchBarFocusAtom = atom<SearchBarFocusAtomType>({
  key: 'searchBarFocusAtom',
  default: {
    location: false,
    entryDate: false,
    charge: false,
    personnel: false,
    focus: false
  }
})

export type PersonnelAtomType = {
  adult: number;
  child: number;
  baby: number;
  [key: string]: number;
}

export const personnelAtom = atom<PersonnelAtomType>({
  key: 'personnelAtom',
  default: {
    adult: 0,
    child: 0,
    baby: 0
  }
})

export type RangeAtomType = {
  leftRange: number;
  rightRange: number;
}

export const rangeAtom = atom<RangeAtomType>({
  key: 'rangeAtom',
  default: {
    leftRange: 0,
    rightRange: 100
  }
})

export type LocationAtomType = {
  name: string;
  x: number;
  y: number;
}

export const locationAtom = atom<LocationAtomType>({
  key: 'locationAtom',
  default: {
    name: '',
    x: 0,
    y: 0
  }
})

export const userInfoAtom = atom<any>({
  key: 'userInfoAtom',
  default: {
    x: SEOUL_LOCATION.x,
    y: SEOUL_LOCATION.y,
    zoom: BASE_ZOOM_LEVEL,
    checkIn: '',
    checkOut: '',
    leftRange: '',
    rightRange: '',
    adult: '',
    child: '',
    baby: ''
  }
});

export const userInfoSelector = selector({
  key: 'userInfoSelector',
  get: ({ get }) => {
    const { checkIn, checkOut, leftRange, rightRange, adult, child, baby } = get(userInfoAtom);
    return {
      checkDate: getUserDate({ checkIn, checkOut }),
      range: getChargeRange({ leftRange, rightRange }),
      guest: getNumberOfGuest({ adult, child, baby })
    }
  }
});
