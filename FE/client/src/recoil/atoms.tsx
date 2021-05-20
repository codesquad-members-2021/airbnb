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
  entryDate: boolean,
  charge: boolean,
  personnel: boolean,
  focus: boolean
}

export const searchBarFocusAtom = atom<SearchBarFocusAtomType>({
  key: 'searchBarFocusAtom',
  default: {
    entryDate: false,
    charge: false,
    personnel: false,
    focus: false
  }
})
