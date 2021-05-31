import { atom, selector } from "recoil";
import { getDate, currentDate } from '../utils/calendarUtil';

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

type PersonnelAtomType = {
  adult: number;
  child: number;
  baby: number;
  [key: string]: number;
}

export const PersonnelAtom = atom<PersonnelAtomType>({
  key: 'PersonnelAtom',
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

export const RangeAtom = atom<RangeAtomType>({
  key: 'RangeAtom',
  default: {
    leftRange: 0,
    rightRange: 100
  }
})

export type LocationAtomType = {
  name: string;
  coordinate: {
    x: number;
    y: number;
  }
}

export const LocationAtom = atom<LocationAtomType>({
  key: 'LocationAtom',
  default: {
    name: '',
    coordinate: {
      x: 0,
      y: 0
    }
  }
})