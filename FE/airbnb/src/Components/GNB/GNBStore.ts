import { atom, selector } from "recoil";

export const isSearchPageState = atom({
  key: "isSearchPageState",
  default: false,
});

export const showMiniSearchBarState = atom({
  key: "showMiniSearchBarState",
  default: false,
});

export const loginState = atom({
  key: "isLogin",
  default: false,
});

export const dropDownState = atom({
  key: "dropDownState",
  default: false,
});

export const selectTitleState = {
  checkIn: atom({
    key: "checkInTitle",
    default: "체크인",
  }),

  checkOut: atom({
    key: "checkOutTitle",
    default: "체크아웃",
  }),

  price: atom({
    key: "priceTitle",
    default: "요금",
  }),

  people: atom({
    key: "peopleTitle",
    default: "인원",
  }),
};

export const selectInputState = {
  checkIn: atom({
    key: "checkInInput",
    default: "날짜 입력",
  }),

  checkOut: atom({
    key: "checkOutInput",
    default: "날짜 입력",
  }),

  price: atom({
    key: "priceInput",
    default: "금액대 설정",
  }),

  people: atom({
    key: "peopleInput",
    default: "게스트 추가",
  }),
};

export const selectCancleButtonState = {
  checkIn: atom({
    key: "checkInCancleButtonFlag",
    default: false,
  }),

  checkOut: atom({
    key: "checkOutCancleButtonFlag",
    default: false,
  }),

  price: atom({
    key: "priceCancleButtonFlag",
    default: false,
  }),

  people: atom({
    key: "peopleCancleButtonFlag",
    default: false,
  }),
};

export const selectBoxState = {
  checkInBoxState: selector({
    key: "checkInBoxState",
    get: ({ get }) => {
      const title = get(selectTitleState.checkIn);
      const input = get(selectInputState.checkIn);
      const cancleButtonFlag = get(selectCancleButtonState.checkIn);
      return { title, input, cancleButtonFlag };
    },
  }),
  checkOutBoxState: selector({
    key: "checkOutBoxState",
    get: ({ get }) => {
      const title = get(selectTitleState.checkOut);
      const input = get(selectInputState.checkOut);
      const cancleButtonFlag = get(selectCancleButtonState.checkOut);
      return { title, input, cancleButtonFlag };
    },
  }),
  priceBoxState: selector({
    key: "priceBoxState",
    get: ({ get }) => {
      const title = get(selectTitleState.price);
      const input = get(selectInputState.price);
      const cancleButtonFlag = get(selectCancleButtonState.price);
      return { title, input, cancleButtonFlag };
    },
  }),
  peopleBoxState: selector({
    key: "peopleBoxState",
    get: ({ get }) => {
      const title = get(selectTitleState.people);
      const input = get(selectInputState.people);
      const cancleButtonFlag = get(selectCancleButtonState.people);
      return { title, input, cancleButtonFlag };
    },
  }),
};

export const selectedInfoState = atom<string[]>({
  key: "selectedInfoState",
  default: ["일정입력", "금액대 입력", "인원 입력"],
});

export const modalShowState = {
  calendarModalShowState: atom({
    key: "calendarModalShowState",
    default: false,
  }),

  priceModalShowState: atom({
    key: "priceModalShowState",
    default: false,
  }),

  peopleModalShowState: atom({
    key: "peopleModalShowState",
    default: false,
  }),
};

export const calendarState = {
  current: {
    year: atom({
      key: "currentYear",
      default: new Date().getFullYear(),
    }),
    month: atom({
      key: "currentMonth",
      default: new Date().getMonth(),
    }),
  },
  prev: {
    year: atom({
      key: "prevYear",
      default: new Date().getFullYear(),
    }),
    month: atom({
      key: "prevMonth",
      default: new Date().getMonth() - 1,
    }),
  },
  next: {
    year: atom({
      key: "nextYear",
      default: new Date().getFullYear(),
    }),
    month: atom({
      key: "nextMonth",
      default: new Date().getMonth() + 1,
    }),
  },
  afterNext: {
    year: atom({
      key: "afterNextYear",
      default: new Date().getFullYear(),
    }),
    month: atom({
      key: "afterNextMonth",
      default: new Date().getMonth() + 2,
    }),
  },
};

export const priceState = {
  prices: atom({
    key: "priceState",
    default: [0],
  }),
  error: atom({
    key: "error",
    default: null,
  }),
  lowerLimit: atom({
    key: "lowerLimit",
    default: 0,
  }),
  upperLimit: atom({
    key: "upperLimit",
    default: 1000000,
  }),
};

export const peopleState = {
  adultCount: atom({
    key: "adultCount",
    default: 0,
  }),
  childrenCount: atom({
    key: "childrenCount",
    default: 0,
  }),
  babyCount: atom({
    key: "babyCount",
    default: 0,
  }),
  adultMinusButtonFlag: atom({
    key: "adultMinusButtonFlag",
    default: true,
  }),
  childrenMinusButtonFlag: atom({
    key: "childrenMinusButtonFlag",
    default: true,
  }),
  babyMinusButtonFlag: atom({
    key: "babyMinusButtonFlag",
    default: true,
  }),
  adultPlusButtonFlag: atom({
    key: "adultPlusButtonFlag",
    default: false,
  }),
  childrenPlusButtonFlag: atom({
    key: "childrenPlusButtonFlag",
    default: false,
  }),
  babyPlusButtonFlag: atom({
    key: "babyPlusButtonFlag",
    default: false,
  }),
};
