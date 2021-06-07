export type PlusButtonProps = {
  disabled: boolean;
};

export type HeadCountProps = {
  guestType: GuestType;
}

export type GuestType = 'adults' | 'children' | 'infants';

export type HandleCountType = {
  guestType: GuestType;
  count: number;
}