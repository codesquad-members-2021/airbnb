import { atom, selector } from 'recoil';

type guest = {
  adult: number;
  child: number;
  baby: number;
  [key: string]: number;
};

const guestCountState = atom<guest>({
  key: 'guestCountState',
  default: { adult: 0, child: 0, baby: 0 },
});

const isOpenGuestModal = atom<boolean>({
  key: 'isOpenGuestModal',
  default: false,
});

const totalGuestState = selector({
  key: 'totalGuests',
  get: ({ get }) => {
    const { adult, child, baby } = get(guestCountState);
    return adult + child > 0
      ? `게스트 ${adult + child}명 유아 ${baby}명`
      : `게스트 추가`;
  },
});

export { guestCountState, isOpenGuestModal, totalGuestState };
