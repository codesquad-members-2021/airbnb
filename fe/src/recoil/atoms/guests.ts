import { atom } from 'recoil';

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

export { guestCountState, isOpenGuestModal };
