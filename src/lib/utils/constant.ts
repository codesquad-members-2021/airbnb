export const MESSAGE = {
  ERROR: {
    NO_DIRECTION:
      "You have to send direction prop(left or right) to <Controller>",
    BOTH_DIRECTION:
      "<Controller> can receive only one direction prop(left or right)",
    BOTH_TYPE: "",
    NO_TYPE: "",
    INVALID_ACTION: "",
    INVALID_PROVIDER: "Cannot find Provider!",
    INVALID_RANGE_COUNT_OF_MONTH:
      "RangeError : countOfMonth is out of range(1~12)",
    INVALID_CASE: "",
    NOT_FOUND_CASE: "",
  },
};

export const DAYS: { [key: string]: string[] } = {
  en: ["SON", "MON", "TUE", "WED", "THU", "FRI", "SAT"],
  ko: ["일", "월", "화", "수", "목", "금", "토"],
};

export const LAST_DAYS: { [key: number]: number[] } = {
  "28": createDays(28),
  "29": createDays(29),
  "30": createDays(30),
  "31": createDays(31),
};

export const FIRST_DAYS: { [key: number]: ""[] } = {
  0: [],
  1: [""],
  2: ["", ""],
  3: ["", "", ""],
  4: ["", "", "", ""],
  5: ["", "", "", "", ""],
  6: ["", "", "", "", "", ""],
};

function createDays(day: number): number[] {
  const days = Array.from({ length: day }, (_, i) => i + 1);
  return days;
}
