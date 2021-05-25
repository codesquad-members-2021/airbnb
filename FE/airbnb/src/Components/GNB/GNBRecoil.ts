import { atom, selector } from "recoil";

export const loginState = atom<boolean>({
  key: "isLogin",
  default: false,
});

export const dropDownState = atom<boolean>({
  key: "dropDownState",
  default: false,
});

export const boxHasValue = {
  checkIn: atom<boolean>({
    key: "checkIn",
    default: false,
  }),

  checkOut: atom<boolean>({
    key: "checkOut",
    default: true,
  }),

  price: atom<boolean>({
    key: "price",
    default: true,
  }),

  people: atom<boolean>({
    key: "people",
    default: false,
  }),
};

export const selectBoxState = selector({
  key: "selectBoxState",
  get: ({ get }) => {
    const checkInHasValue = get(boxHasValue.checkIn);
    const checkOutHasValue = get(boxHasValue.checkOut);
    const priceHasValue = get(boxHasValue.price);
    const peopleHasValue = get(boxHasValue.people);

    const ret = [
      {
        title: "체크인",
        description: "날짜 입력",
        cancleButtonFlag: checkInHasValue,
      },
      {
        title: "체크아웃",
        description: "날짜 입력",
        cancleButtonFlag: checkOutHasValue,
      },
      {
        title: "요금",
        description: "금액대 설정",
        cancleButtonFlag: priceHasValue,
      },
      {
        title: "인원",
        description: "게스트 추가",
        cancleButtonFlag: peopleHasValue,
      },
    ];
    return ret;
  },
});

export const selectedInfoState = atom<string[]>({
  key: "selectedInfoState",
  default: ["일정입력", "금액대 입력", "인원 입력"],
});
